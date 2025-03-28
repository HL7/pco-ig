Extension:  PCOGoalAttainmentScaling
Id: pco-goal-attainment-scaling
Title: "Goal Attainment Scaling Extension"
Description: "Goal Attainment Scaling (GAS) is an extension used to specify five levels of attainment for a person-centered goal."
* ^context.type = #element
* ^context.expression = "Goal"
* extension contains 
  level 0..1 MS and 
  progressText 1..1 MS
* extension[level] ^short = "Code indicating GAS level"
* extension[level].value[x] only Coding
* extension[level].valueCoding 1..1
* extension[level].valueCoding from GASScoreAnswers (required)
* extension[progressText] ^short = "Description of GAS level"
* extension[progressText].value[x] only string
* extension[progressText].valueString 1..1
  * ^short = "Free-text description of GAS progress level"

Profile: PCOGoalAttainmentScaleProfile
Parent: PCOGoalProfile
Id: pco-gas-goal-profile
Title: "Person-Centered GAS Goal"
Description: "A person-centered goal using Goal Attainment Scaling (GAS) to measure its progress and achievement."
* extension contains
    PCOGoalAttainmentScaling named gas-scaling 0..5 MS
* target 0..*
  * ^short = "(USCDI) Target outcome for the goal"
  * measure 0..1 MS
  * measure = $LNC#107332-9
    * ^short = "Goal attainment scale - Reported"

Profile: PCOGoalAttainmentScoreObservation
Parent: USCoreObservationScreeningAssessmentProfile
Id: pco-gas-score-observation
Title: "Goal Attainment Scaling (GAS) score observation"
Description: "A GAS score indicates how a patient, caregiver, or practitioner rated goal progress using goal attainment scaling."
* effective[x] 1..1 MS
  * ^short = "When the score was assessed"
* effective[x] only dateTime or Period
* code from GoalAttainmentScalingScore (extensible)
  * ^short = "Code for Goal Attainment Scaling (GAS) score observation"
* focus 0..1 MS
* focus only Reference(PCOGoalAttainmentScaleProfile)
  * ^short = "The goal whose progress was scored"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from GASScoreAnswers (required)
  * ^short = "GAS Score Answers"
