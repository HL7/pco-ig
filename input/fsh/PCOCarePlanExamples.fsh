
Instance: pcoSocialConnectionsCarePlanExample
InstanceOf: PCOCarePlan
Title: "Care Plan for person-centered goal"
Description: "Care Plan for a person-centered goal with action steps for achieving what matters most to that person."
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(pcoPatientJones)
* goal = Reference(pcoGoalSocialConnectionsWithGAS)
* activity[0].reference = Reference(pcoMindfulnessSupportProgram)
* period.start = "2025-02-15"
* period.end = "2025-09-30"

Instance: pcoMindfulnessSupportProgram
InstanceOf: USCoreServiceRequestProfile
Title: "Care Plan: Action step for mindfulness program"
Description: "Care Plan activity: Mindfulness coaching to support anxiety management"
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(pcoPatientJones)
* requester = Reference(pcoPractitionerAnderson)
* code.coding = $SCT#1259023009 "Mindfulness Based Stress Reduction program (regime/therapy)"
* authoredOn = "2025-02-15"
* occurrenceTiming.repeat.boundsPeriod.start = "2025-02-15"
* occurrenceTiming.repeat.boundsPeriod.end = "2025-06-30"
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.periodUnit = #wk
* note.text = "Trial of mindfulness coaching to support anxiety management"
