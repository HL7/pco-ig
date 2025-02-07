library GoalAttainmentLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.4.000' called FHIRHelpers
include PCOCommon version '0.1.0' called PC
include WhatMattersLogic version '0.1.0' called WM

codesystem "LOINC": 'http://loinc.org'
valueset "PCO Goal Domain Categories": 'http://hl7.org/fhir/us/pco/ValueSet/pco-goal-domains-example-vs'
valueset "Goal Attainment Scaling (GAS) Score": 'http://hl7.org/fhir/us/pco/ValueSet/goal-attainment-scaling-score'
valueset "Follow-Up GAS Score Answers": 'http://hl7.org/fhir/us/pco/ValueSet/gas-score-answers'
valueset "PROM Target Measures": 'http://hl7.org/fhir/us/pco/ValueSet/prom-target-measures'

code "Goal attainment scale": '107332-9' from "LOINC" display 'Goal attainment scale'
code "Practitioner follow-up goal attainment scaling score": '107333-7' from "LOINC" display 'Practitioner follow-up goal attainment scaling score'
code "Patient follow-up goal attainment scaling score": '107334-5' from "LOINC" display 'Patient follow-up goal attainment scaling score'
code "Caregiver follow-up goal attainment scaling score": '107331-1' from "LOINC" display 'Caregiver follow-up goal attainment scaling score'

parameter "Measurement Period" Interval<DateTime>
    default Interval[@2024-01-01T00:00:00.000Z, @2024-12-31T23:59:59.999Z]

parameter "Follow-Up Interval" Interval<System.Quantity>
  default Interval[2 weeks, 26 weeks]

context Patient

// For debugging
define GoalSummary: 
  [Goal] goal
    return {
      id: goal.id.value,
      dueDate: goal.dueDate(),
      wellbeingCategory: goal.category in WM."Well-Being Categories",
      goalDomainCategory: goal.category in "PCO Goal Domain Categories",
      addressesWhatMatters: exists goal.whatMattersObservations(),
      hasGAS: goal.hasGAS(),
      hasPROM: goal.hasPROM(),
      carePlans: goal.carePlans()
    }

// For debugging
define CarPlanSummary: 
  [CarePlan] carePlan
    return {
      id: carePlan.id.value,
      pcoGoals: carePlan.pcoGoals()
    }

// All FHIR Goals for this patient. Useful while debugging to verify subset matched by "PCO Goals".
define "All Goals":
  [Goal] goal

/* 
  A "PCO Goal" is any FHIR Goal that has a category in "What Matters Category" or "PCO Domain Categories"
      or that addresses a What Matters observation
  and has a start date.
*/
define "PCO Goals":
  [Goal] goal
    where (goal.category in WM."Well-Being Categories"
        or goal.category in "PCO Goal Domain Categories"
        or exists goal.whatMattersObservations())
      and (goal.start as FHIR.date) is not null

// A "GAS Goal" is any PCO Goal that includes GAS extensions
define "GAS Goals":
  "PCO Goals" goal
    where goal.hasGAS()

// All FHIR CarePlan resources for this patient. Useful for verifying subset matched by "PCO Care Plans".
define "All Care Plans":
  [CarePlan] carePlan

// A "PCO CarePlan" is any FHIR CarePlan that includes a PCO Goal
define "PCO Care Plans":
  [CarePlan] carePlan
    where exists carePlan.pcoGoals()

/*
  @description: Returns a list of Goals with goal attainment scaling (GAS) extensions and an associated CarePlan.
*/
define "PCO Goals with GAS and Action Plan":
    "GAS Goals" goal
      where exists goal.carePlans()

// Observations containing a PROM score.
define "PROM Scores":
  [Observation: "PROM Target Measures"]

// Observations containing a GAS score.
define "GAS Scores":
  [Observation: "Goal Attainment Scaling (GAS) Score"]

// Returns a collection of Observations with a patient's GAS scores.
define "GAS Patient Scores":
  "GAS Scores" obs
    where obs.code = "Patient follow-up goal attainment scaling score"
    // where exists obs.performer.resolvePatients()

// Returns a collection of Observations with a practitioner's GAS scores.
define "GAS Practitioner Scores":
  "GAS Scores" obs
    where obs.code = "Practitioner follow-up goal attainment scaling score"
    // where exists obs.performer.resolvePractitioners()

// Returns a collection of Observations with a caregiver's GAS scores.
define "GAS Caregiver Scores":
  "GAS Scores" obs
    where obs.code = "Caregiver follow-up goal attainment scaling score"
    // where exists obs.performer.resolveRelatedPersons()

define fluent function hasGAS(goal Goal):
  exists goal.extensions('http://hl7.org/fhir/us/pco/StructureDefinition/pco-goal-attainment-scaling')
    or exists (goal.target target
      where target.measure = "Goal attainment scale"
    )
    or exists goal.gasScores()

/// Returns true if this Goal has a PROM code in its target.measure
define fluent function hasPROM(goal Goal):
  exists (goal.target target
    where target.measure in "PROM Target Measures"
  )

// Returns a list of Observation including both GAS and PROM scores
define fluent function pcoScores(goal Goal):
  goal.gasScores()
    union goal.promScores()

// Returns a list of Observation including only GAS scores
define fluent function gasScores(goal Goal):
  "GAS Scores" score
    where score.focusGoals() contains goal

// Returns a list of Observation including only PROM scores
define fluent function promScores(goal Goal):
  "PROM Scores" score
    where score.focusGoals() contains goal

// Returns a list of PCO Goals that are included in this CarePlan.
define fluent function pcoGoals(carePlan CarePlan):
  flatten( carePlan.goal goalRef
      return [Goal] goal
        where goal.id = goalRef.reference.getId()
          and "PCO Goals" contains goal
  )

// Returns a list of Goal where focus includes the given Observation.
define fluent function focusGoals(obs Observation):
  obs.focus.resolveGoals()

// PCO Goals whose startDate falls within the Measurement Period
define "PCO Goals During Measurement Period":
  "PCO Goals" goal
    where (ToDateTime(goal.start as FHIR.date) during "Measurement Period")
      and (goal.hasGAS() or goal.hasPROM())
      and exists goal.carePlans()

/* 
Baseline Scares are PCO score observations taken during the Measurement Period,
but before the follow-up period for its Goal. Default follow-up period is 
2 weeks to 6 months following the goal startDate.
*/
define "Baseline Scores Before Follow-Up Period":
  flatten( "PCO Goals During Measurement Period" goal
    let pcoScores: goal.pcoScores()
      return pcoScores score 
        let scoreDate: score.effective as FHIR.dateTime
        where (scoreDate during "Measurement Period")
          and (scoreDate before start of "Follow-Up Interval For"(goal))
  )

/* 
Follow-Up Scares are PCO score observations taken during the Measurement Period,
and during the follow-up period for its Goal. Default follow-up period is 
2 weeks to 6 months following the goal startDate.
*/
define "Follow-Up Scores During Measurement Period":
  flatten( "PCO Goals During Measurement Period" goal
    let pcoScores: goal.pcoScores()
      return pcoScores score 
        let scoreDate: score.effective as FHIR.dateTime
        where scoreDate during "Measurement Period"
          and scoreDate during "Follow-Up Interval For"(goal)
  )

/*
Computes the follow-up interval for a Goal based on this measure's "Follow-Up Interval" parameter.
@return Interval<DateTime>
*/
define function "Follow-Up Interval For" (goal Goal):
  goal goal
    let startDate: ToDateTime(goal.start as FHIR.date)
      return Interval(startDate + start of "Follow-Up Interval", startDate + end of "Follow-Up Interval")
