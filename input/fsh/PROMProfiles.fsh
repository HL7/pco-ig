Profile: PCOGoalOutcomeMeasureProfile
Parent: PCOGoalProfile
Id: pco-prom-goal-profile
Title: "Person-Centered PROM Goal"
Description: "Person-centered goal using a Patient-Reported Outcome Measure (PROM) score to measure its progress and achievement."
* target 1..1
  * measure 1..1 MS
    * ^short = "Target score for evaluating PCO Goal using PROMs"
  * measure from PROMTargetMeasures (extensible)
  * detailQuantity 1..1 MS
    * ^short = "Target value for the PROM score"

Profile: PCOPatientReportedOutcomeScore
Parent: USCoreObservationScreeningAssessmentProfile
Id: pco-prom-score-observation
Title: "Patient-Reported Outcome Measure (PROM) score observation"
Description: "This observation records how a patient's progress is rated using a PROM assessment score."
* effective[x] 1..1 MS
  * ^short = "When the score was assessed"
* effective[x] only dateTime or Period
* code from PROMTargetMeasures (extensible)
  * ^short = "Code for PROM score observation"
* focus 0..1 MS
* focus only Reference(PCOGoalOutcomeMeasureProfile)
  * ^short = "The goal whose progress was scored"
* value[x] 1..1 MS
* value[x] only Quantity
