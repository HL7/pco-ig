Extension:  PCOGoalAttainmentScaling
Id: pco-goal-attainment-scaling
Title: "Goal Attainment Scaling Extension"
Description: "Goal Attainment Scaling (GAS) is an extension used to specify five levels of attainment for a person-centered goal."
* ^context.type = #element
* ^context.expression = "Goal"
* extension contains 
  level 0..1 MS and 
  text 1..1 MS
* extension[level] ^short = "Code indicating GAS level"
* extension[level].value[x] only Coding
* extension[level].valueCoding 1..1
* extension[level].valueCoding from GASScoreAnswers (required)
* extension[text] ^short = "GAS text"
* extension[text].value[x] only string
* extension[text].valueString 1..1

Profile: PCOGoalAttainmentScaleProfile
Parent: PCOGoalProfile
Id: pco-gas-goal-profile
Title: "Person-Centered GAS Goal"
Description: "Person-centered goal with goal attainment scaling."
* extension contains
    PCOGoalAttainmentScaling named gas-scaling 0..5 MS
* target 0..1 MS
  * measure = $LNC#107332-9 "Goal attainment scale"

Profile: PCOGoalAttainmentScoreObservation
Parent: USCoreSimpleObservationProfile
Id: pco-gas-score-observation
Title: "Goal Attainment Scaling (GAS) score observation"
Description: "The follow-up score indicates how a patient, caregiver, or practitioner rated progress on goal attainment scaling."
// Satisfies US Core required binding for category
* category[us-core] 1..* MS
* category[us-core] = OBSCAT#survey
* effectiveDateTime 1..1 MS
  * ^short = "When the score was assessed"
* code from GoalAttainmentScalingScore (extensible)
  * ^short = "Code for Goal Attainment Scaling (GAS) score observation"
* focus 0..1 MS
* focus only Reference(PCOGoalAttainmentScaleProfile)
  * ^short = "The goal whose progress was scored"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from GASScoreAnswers (required)
