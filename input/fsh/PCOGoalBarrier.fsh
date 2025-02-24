
Profile: PCOGoalBarrierProfile
Parent: USCoreSimpleObservationProfile
Id: pco-goal-barrier
Title: "Goal Barrier"
Description: "Assessment observation about a barrier, bothersome symptom or health concern that interferes with goal achievement."
// Satisfies US Core required binding for category
* category[us-core] 1..1 MS
* category[us-core] = OBSCAT#survey

* code from GoalBarrierCodes (extensible)
  * ^binding.description = "Assessment of barriers to meet care plan goals performed"

// * extension contains
//     PertainsToGoalExtension named pertainsToGoal 0..1 MS
// * extension[pertainsToGoal] ^short = "The goal that has this barrier"
* focus 0..1 MS
* focus only Reference(Goal)
  * ^short = "The goal that has this barrier"

* value[x] 1..1 MS
* value[x] only CodeableConcept or string
* valueCodeableConcept from GoalBarrierTypesExample (example)
  * ^short = "Common barriers selected from a list"
* valueString
  * ^short = "Free-text description of the barrier"
* note 0..* MS

ValueSet: GoalBarrierCodes
Id: goal-barrier-codes
Title: "Goal Barrier Assessment Codes"
Description: "Terminology codes for goal barrier assessment"
* ^experimental = false
* insert SNOMEDCopyrightNotice
* $SCT#452341000124107 "Assessment of barriers to meet care plan goals performed"