
Instance: pcoGoalSocialConnectionsWithGAS
InstanceOf: PCOGoalAttainmentScaleProfile
Title: "Goal with GAS"
Description: "Person-centered goal with attainment scaling extensions"
Usage: #example
* lifecycleStatus = #active
* achievementStatus = $GoalAchievement#in-progress
* category[pco] = PCOConcepts#what-matters "What Matters"
* category[goal-domain] = PCOGoalDomains#social-functioning "Social Functioning"
* subject = Reference(pcoPatientJones)
* expressedBy = Reference(pcoPatientJones)
* startDate = "2025-02-15"
* target.dueDate = "2025-07-31"
* addresses[0] = Reference(pcoWhatMattersRelationshipsExample) "What Matters: Family & Friends"
* description.text = "I want to practice being present when interacting with family and friends in an uplifting way at least 3x monthly."
* extension[gas-scaling][0].extension[level].valueCoding = $LNC#LA34479-8 "Much better than expected"
* extension[gas-scaling][0].extension[text].valueString = "I am practicing being present when interacting with family and friends in an uplifting way at least 5x monthly."
* extension[gas-scaling][1].extension[level].valueCoding = $LNC#LA34480-6 "Better than expected"
* extension[gas-scaling][1].extension[text].valueString = "I am practicing being present when interacting with family and friends in an uplifting way at least 4x monthly."
* extension[gas-scaling][2].extension[level].valueCoding = $LNC#LA34481-4 "Expected outcome"
* extension[gas-scaling][2].extension[text].valueString = "I am practicing being present when interacting with family and friends in an uplifting way at least 3x monthly."
* extension[gas-scaling][3].extension[level].valueCoding = $LNC#LA34483-0 "Less than expected"
* extension[gas-scaling][3].extension[text].valueString = "I am practicing being present when interacting with family and friends in an uplifting way 1-2x per month."
* extension[gas-scaling][4].extension[level].valueCoding = $LNC#LA34484-8 "Much less than expected"
* extension[gas-scaling][4].extension[text].valueString = "I do not interact with family and friends at all each month."

Instance: pcoGoalSocialConnectionsWithoutExtensions
InstanceOf: PCOGoalProfile
Title: "Goal without GAS Extensions"
Description: "Person-centered goal with GAS target measure and without GAS extensions"
Usage: #example
* lifecycleStatus = #active
* achievementStatus = $GoalAchievement#in-progress
* category[pco] = PCOConcepts#what-matters "What Matters"
* category[goal-domain] = PCOGoalDomains#social-functioning "Social Functioning"
* subject = Reference(pcoPatientJones)
* expressedBy = Reference(pcoPatientJones)
* startDate = "2025-02-15"
* target.dueDate = "2025-07-31"
* addresses[0] = Reference(pcoWhatMattersRelationshipsExample) "What Matters: Family & Friends"
* description.text = "I want to practice being present when interacting with family and friends in an uplifting way at least 3x monthly."
* target.measure = $LNC#107332-9 "Goal attainment scale - Reported"

Instance: pcoBarrierAnxietyCodedValue
InstanceOf: PCOGoalBarrierProfile
Title: "Goal Barrier: Anxiety in social situations, coded value"
Description: "Barrier for goal achievement"
Usage: #example
* status = #final 
* code = $SCT#452341000124107 "Assessment of barriers to meet care plan goals performed"
* focus = Reference(pcoGoalSocialConnectionsWithGAS)
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-15T15:00:00Z"
* valueCodeableConcept = $SCT#48694002 "Feeling anxious"

Instance: pcoBarrierFreeTextValue
InstanceOf: PCOGoalBarrierProfile
Title: "Goal Barrier: Don't like to drive"
Description: "Barrier with a free-text description"
Usage: #example
* status = #final 
* code = $SCT#452341000124107 "Assessment of barriers to meet care plan goals performed"
* focus = Reference(pcoGoalSocialConnectionsWithGAS)
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-15T15:05:00Z"
* valueString = "I don't like to drive when it's dark."

// The most important item from What Matters
//      - Use a List to rank order the What Matters observations
//      - The list only needs to contain the one, not all WhatMatters rank-ordered, although all could be included.

// One most bothersome barrier
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
* entry[1].item = Reference(pcoBarrierAnxietyCodedValue)

Instance: pcoGASScoreBaselineExample
InstanceOf: PCOGoalAttainmentScoreObservation
Title: "GAS Baseline Score"
Description: "Baseline GAS score observation at start of goal."
Usage: #example
* status = #final
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPractitionerGonzalez)
* effectiveDateTime = "2025-02-15T15:15:00Z"
* code = $LNC#107332-9 "Goal attainment scale - Reported"
* focus = Reference(pcoGoalSocialConnectionsWithGAS)
* valueCodeableConcept = $LNC#LA34483-0 "Less than expected"

Instance: pcoGASScorePatientFollowupExample
InstanceOf: PCOGoalAttainmentScoreObservation
Title: "GAS Patient Follow-up Score"
Description: "Follow-up GAS score observation recorded by a Patient showing goal progress."
Usage: #example
* status = #final 
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-03-10T10:15:00Z"
* code = $LNC#107334-5 "Patient follow-up goal attainment scaling score"
* focus = Reference(pcoGoalSocialConnectionsWithGAS)
* valueCodeableConcept = $LNC#LA34483-0 "Less than expected"

Instance: pcoGASScorePractitionerFollowupExample
InstanceOf: PCOGoalAttainmentScoreObservation
Title: "GAS Practitioner Follow-up Score"
Description: "Follow-up GAS score observation recorded by a Practitioner showing goal progress."
Usage: #example
* status = #final 
* category = USCORECAT#functional-status "Functional Status"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPractitionerGonzalez)
* effectiveDateTime = "2025-04-17T10:15:00Z"
* code = $LNC#107333-7 "Practitioner follow-up goal attainment scaling score"
* focus = Reference(pcoGoalSocialConnectionsWithGAS)
* valueCodeableConcept = $LNC#LA34481-4 "Expected outcome"
