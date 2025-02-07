
Instance: pcoGoalWalkDogExample
InstanceOf: PCOGoalAttainmentScaleProfile
Title: "Goal with GAS"
Description: "Person-centered goal with attainment scaling extensions"
Usage: #example
* lifecycleStatus = #active
* achievementStatus = $GoalAchievement#in-progress
* category[pco] = PCOConcepts#what-matters "What Matters"
* category[goal-domain] = PCOGoalDomains#physical-function "Physical Function"
* subject = Reference(pcoPatientJones)
* expressedBy = Reference(pcoPatientJones)
* startDate = "2024-04-03"
* target.dueDate = "2024-09-30"
* addresses[0] = Reference(pcoWhatMattersBodyExample) "What Matters: Moving the Body"
* addresses[1] = Reference(pcoWhatMattersRelationshipsExample) "What Matters: Family & Friends"
* description.text = "Walk dog outside once a week"
* extension[gas-scaling][0].extension[level].valueCoding = $LNC#LA34479-8 "Much better than expected"
* extension[gas-scaling][0].extension[text].valueString = "Walk dog outside three times a week"
* extension[gas-scaling][1].extension[level].valueCoding = $LNC#LA34480-6 "Better than expected"
* extension[gas-scaling][1].extension[text].valueString = "Walk dog outside twice a week"
* extension[gas-scaling][2].extension[level].valueCoding = $LNC#LA34481-4 "Expected outcome"
* extension[gas-scaling][2].extension[text].valueString = "Walk dog outside once a week"
* extension[gas-scaling][3].extension[level].valueCoding = $LNC#LA34483-0 "Less than expected"
* extension[gas-scaling][3].extension[text].valueString = "Does not walk dog but goes outside with dog"
* extension[gas-scaling][4].extension[level].valueCoding = $LNC#LA34484-8 "Much less than expected"
* extension[gas-scaling][4].extension[text].valueString = "Unable to go outside with dog"

Instance: pcoGoalWalkDogExampleWithoutExtensions
InstanceOf: PCOGoalAttainmentScaleProfile
Title: "Goal without GAS Extensions"
Description: "Person-centered goal with GAS target measure and without GAS extensions"
Usage: #example
* lifecycleStatus = #active
* achievementStatus = $GoalAchievement#in-progress
* category[pco] = PCOConcepts#what-matters "What Matters"
* category[goal-domain] = PCOGoalDomains#physical-function "Physical Function"
* subject = Reference(pcoPatientJones)
* expressedBy = Reference(pcoPatientJones)
* startDate = "2024-04-03"
* target.dueDate = "2024-09-30"
* addresses[0] = Reference(pcoWhatMattersBodyExample) "What Matters: Moving the Body"
* addresses[1] = Reference(pcoWhatMattersRelationshipsExample) "What Matters: Family & Friends"
* description.text = "Walk dog outside once a week"
* target.measure = $LNC#107332-9 "Goal attainment scale"

Instance: pcoBarrierUrinaryIncontinence
InstanceOf: PCOGoalBarrierProfile
Title: "Goal Barrier: Urinary incontinence"
Description: "Barrier for goal achievement"
Usage: #example
* status = #final 
* code = $SCT#452341000124107 "Assessment of barriers to meet care plan goals performed"
* focus = Reference(pcoGoalWalkDogExample)
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-04-10T15:05:00Z"
* valueCodeableConcept = $SCT#165232002 "Urinary incontinence"

Instance: pcoBarrierDiabeticDiet
InstanceOf: PCOGoalBarrierProfile
Title: "Goal Barrier: Diabetic diet (other)"
Description: "Barrier with a free-text description"
Usage: #example
* status = #final 
* code = $SCT#452341000124107 "Assessment of barriers to meet care plan goals performed"
* focus = Reference(pcoGoalWalkDogExample)
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-04-10T15:05:00Z"
* valueString = "Diabetic diet restrictions"

/*
Instance: pcoCareTradeOffBurdensomeWaterPill
InstanceOf: PCOCareTradeOffProfile
Title: "Care Trade-Off: Water pill"
Description: "Care Trade-off that is burdensome"
Usage: #example
* status = #final 
* code = CareTradeOffChoiceCodes#burdensome-care "Burdensome"
* focus = Reference(pcoGoalWalkDogExample)
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-04-10T15:05:00Z"
* valueCodeableConcept = $SCT#422979000 "Medication regimen behavior finding"
* valueCodeableConcept.text = "Water pill"
* note.text = "Have to go to the bathroom too often"

Instance: pcoCareTradeOffHelpfulExercising
InstanceOf: PCOCareTradeOffProfile
Title: "Care Trade-Off: Exercising"
Description: "Care Trade-off that is helpful"
Usage: #example
* status = #final 
* code = CareTradeOffChoiceCodes#helpful-care "Helpful"
* focus = Reference(pcoGoalWalkDogExample)
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-04-10T15:05:00Z"
* valueCodeableConcept = $SCT#256235009 "Exercise"

*/

// The most important item from What Matters
//      - Use a List to rank order the What Matters observations
//      - The list only needs to contain the one, not all WhatMatters rank-ordered, although all could be included.

// One most bothersome symptom or health concern
//      - Use a List to rank order the barriers
//      - The list only needs to contain the one most bothersome, not all barriers rank-ordered, although all could be included.

Instance: pcoPrioritiesList
InstanceOf: PCOPersonalPrioritiesOrganizer
Title: "Personal Priorities List"
Description: "Patient selecton of the most important items for well-being, goal barrier, and the most bothersome care trade-off"
Usage: #example
* status = #current 
* mode = #working
* subject = Reference(pcoPatientJones)
* date = "2024-04-10T15:05:00Z"
* entry[0].item = Reference(pcoWhatMattersRelationshipsExample)
* entry[1].item = Reference(pcoBarrierUrinaryIncontinence)
// * entry[2].item = Reference(pcoCareTradeOffBurdensomeWaterPill)

Instance: pcoGASScoreBaselineExample
InstanceOf: PCOGoalAttainmentScoreObservation
Title: "GAS Baseline Score"
Description: "Baseline GAS score observation at start of goal."
Usage: #example
* status = #final 
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPractitionerGonzalez)
* effectiveDateTime = "2024-04-03T10:15:00Z"
* code = $LNC#107332-9 "Goal attainment scale"
* focus = Reference(pcoGoalWalkDogExample)
* valueCodeableConcept = $LNC#LA34483-0 "Less than expected"

Instance: pcoGASScorePatientFollowupExample
InstanceOf: PCOGoalAttainmentScoreObservation
Title: "Patient GAS Follow-up Score"
Description: "Follow-up GAS score observation recorded by a Patient showing goal progress."
Usage: #example
* status = #final 
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-05-10T10:15:00Z"
* code = $LNC#107334-5 "Patient follow-up goal attainment scaling score"
* focus = Reference(pcoGoalWalkDogExample)
* valueCodeableConcept = $LNC#LA34480-6 "Better than expected"

Instance: pcoGASScorePractitionerFollowupExample
InstanceOf: PCOGoalAttainmentScoreObservation
Title: "Practitioner GAS Follow-up Score"
Description: "Follow-up GAS score observation recorded by a Practitioner showing goal progress."
Usage: #example
* status = #final 
* category = USCORECAT#functional-status "Functional Status"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPractitionerGonzalez)
* effectiveDateTime = "2024-05-22T10:15:00Z"
* code = $LNC#107333-7 "Practitioner follow-up goal attainment scaling score"
* focus = Reference(pcoGoalWalkDogExample)
* valueCodeableConcept = $LNC#LA34481-4 "Expected outcome"
