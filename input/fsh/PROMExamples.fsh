
Instance: pcoGoalAnxietyExample
InstanceOf: PCOGoalOutcomeMeasureProfile
Title: "Goal with GAD-7 PROM Outcome"
Description: "Person-centered goal with a PROM outcome target for GAD-7 score."
Usage: #example
* lifecycleStatus = #active
* achievementStatus = $GoalAchievement#in-progress
* category[goal-domain] = PCOGoalDomains#social-functioning "Social Functioning"
* subject = Reference(pcoPatientJones)
* expressedBy = Reference(pcoPractitionerAnderson)
* startDate = "2025-02-15"
* target.dueDate = "2025-07-31"
* addresses[0] = Reference(pcoWhatMattersRelationshipsExample) "What Matters: Family & Friends"
* description.text = "I want to practice being present when interacting with family and friends in an uplifting way at least 3x monthly."
* target.measure = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* target.detailQuantity.comparator = #<
* target.detailQuantity = 10 UOM#1 "score"

Instance: pcoPROMScoreAnxietyBaseline
InstanceOf: PCOPatientReportedOutcomeScore
Title: "GAD-7 PROM Baseline Score"
Description: "Baseline GAD-7 PROM score observation recorded by a Patient showing goal progress."
Usage: #example
* status = #final 
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-15T13:15:00Z"
* focus = Reference(pcoGoalAnxietyExample)
* code = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* valueQuantity = 15 UOM#1 "score"

Instance: pcoPROMScoreAnxietyFollowUp
InstanceOf: PCOPatientReportedOutcomeScore
Title: "GAD-7 PROM Follow-up Score"
Description: "Follow-up GAD-7 PROM score observation recorded by a Patient showing goal progress."
Usage: #example
* status = #final 
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-04-01T13:15:00Z"
* focus = Reference(pcoGoalAnxietyExample)
* code = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* valueQuantity = 10 UOM#1 "score"
