
Instance: pcoPatientLopez
InstanceOf: USCorePatientProfile
Title: "Patient Camila Lopez" 
Description: "Camila Lopez"
Usage: #example
* identifier[0].use = #official
* identifier[0].system = "http://example.org"
* identifier[0].value = "ee8d4ac0-545c-4501-8d7e-646bfbda1ge3"
* name.family = "Lopez"
* name.given[0] = "Camila"
* gender = #female
* birthDate = "1959-07-16"

Instance: pcoGoalAnxietyExample
InstanceOf: PCOGoalOutcomeMeasureProfile
Title: "Goal for GAD-7 PROM Outcome"
Description: "Person-centered goal with a PROM outcome target for GAD-7 score."
Usage: #example
* lifecycleStatus = #active
* achievementStatus = $GoalAchievement#in-progress
* category[goal-domain] = PCOGoalDomains#emotional-and-mental-health "Emotional And Mental Health"
* subject = Reference(pcoPatientLopez)
* expressedBy = Reference(pcoPractitionerAnderson)
* startDate = "2024-08-11"
* target.dueDate = "2024-12-31"
* description.text = "Reduce to mild anxiety level score"
* target.measure = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* target.detailQuantity.comparator = #<
* target.detailQuantity = 6 UOM#{score} "score"

Instance: pcoPROMScoreAnxietyExample
InstanceOf: PCOPatientReportedOutcomeScore
Title: "GAD-7 PROM Follow-up Score"
Description: "Follow-up GAD-7 PROM score observation recorded by a Patient showing goal progress."
Usage: #example
* status = #final 
* subject = Reference(pcoPatientLopez)
* performer = Reference(pcoPatientLopez)
* effectiveDateTime = "2024-09-19T13:15:00Z"
* focus = Reference(pcoGoalAnxietyExample)
* code = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* valueInteger = 10

Instance: pcoAnxietyCarePlanExample
InstanceOf: PCOCarePlan
Title: "Care Plan for PCO Anxiety Goal"
Description: "Care Plan for a person-centered goal using a PROM score measure."
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(pcoPatientLopez)
* goal = Reference(pcoGoalAnxietyExample)
* activity[0].reference = Reference(pcoMindfulnessSupportProgram)
* period.start = "2024-08-11"
* period.end = "2025-01-31"

Instance: pcoMindfulnessSupportProgram
InstanceOf: USCoreServiceRequestProfile
Title: "Care Plan: Action step for mindfulness program"
Description: "Care Plan activity: Mindfulness coaching to support anxiety management"
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(pcoPatientLopez)
* requester = Reference(pcoPractitionerAnderson)
* code.coding = $SCT#1259023009 "Mindfulness Based Stress Reduction program (regime/therapy)"
* extension[pertainsToGoal].valueReference = Reference(pcoGoalAnxietyExample)
* authoredOn = "2024-08-11"
* occurrenceTiming.repeat.boundsPeriod.start = "2024-08-11"
* occurrenceTiming.repeat.boundsPeriod.end = "2024-10-31"
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.periodUnit = #wk
* note.text = "Trial of mindfulness coaching to support anxiety management"
