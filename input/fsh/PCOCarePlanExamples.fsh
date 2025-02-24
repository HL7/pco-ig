
Instance: pcoPhyicalFunctionCarePlanExample
InstanceOf: PCOCarePlan
Title: "Care Plan for person-centered goal"
Description: "Care Plan for a person-centered goal with action steps for achieving what matters most to that person."
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(pcoPatientJones)
* goal = Reference(pcoGoalSocialConnectionsWithGAS)
* activity[0].reference = Reference(pcoWalkOutsideActionStep)
* activity[1].reference = Reference(pcoPhysicalTherapyReferral)
* activity[2].reference = Reference(pcoAntiInflammatoryMedication)
* period.start = "2024-02-22"
* period.end = "2024-09-30"

Instance: pcoWalkOutsideActionStep
InstanceOf: USCoreServiceRequestProfile
Title: "Care Plan: Personal action step"
Description: "Care Plan activity: Initial personal action step toward goal of walking dog outside"
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(pcoPatientJones)
* requester = Reference(pcoPractitionerGonzalez)
* performer = Reference(pcoPatientJones)
* code.text = "Walk outside without my dog"
* patientInstruction = "Start with a short walk to the corner of your block to gain confidence in your walking."
* extension[pertainsToGoal].valueReference = Reference(pcoGoalSocialConnectionsWithGAS)
* authoredOn = "2024-02-22"
* occurrenceTiming.repeat.boundsPeriod.start = "2024-02-22"
* occurrenceTiming.repeat.boundsPeriod.end = "2024-03-07"
* occurrenceTiming.repeat.frequency = 2
* occurrenceTiming.repeat.periodUnit = #wk

Instance: pcoPhysicalTherapyReferral
InstanceOf: USCoreServiceRequestProfile
Title: "Care Plan: Clinical action step a patient"
Description: "Care Plan activity: Physical therapy to relieve pain related to walking"
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(pcoPatientJones)
* requester = Reference(pcoPractitionerAnderson)
* code.coding = $SCT#91251008 "Physical therapy procedure (regime/therapy)"
* extension[pertainsToGoal].valueReference = Reference(pcoGoalSocialConnectionsWithGAS)
* authoredOn = "2024-02-22"
* occurrenceTiming.repeat.boundsPeriod.start = "2024-03-01"
* occurrenceTiming.repeat.boundsPeriod.end = "2024-04-30"
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.periodUnit = #wk
* note.text = "Trial of physical therapy focused on strengthening"

Instance: pcoAntiInflammatoryMedication
InstanceOf: USCoreMedicationRequestProfile
Title: "Care Plan: Anti-Inflammatory Medication"
Description: "Care Plan activity: Anti-inflammatory gel for knee pain to enable walking"
Usage: #example
* status = #active
* intent = #order
* subject = Reference(pcoPatientJones)
* requester = Reference(pcoPractitionerAnderson)
* medicationCodeableConcept = $rxNorm#2550740 "diclofenac sodium 0.01 MG/MG Topical Gel [Aleve Arthritis Pain]"
* dosageInstruction.asNeededBoolean = true
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-02-22"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2024-06-30"
* dosageInstruction.patientInstruction = "Anti-inflammatory gel applied to knee 30 minutes before exercise"