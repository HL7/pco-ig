
Instance: pcoPatientJones
InstanceOf: USCorePatientProfile
Title: "Patient Dorothy Jones" 
Description: "Dorothy Jones"
Usage: #example
* identifier[0].use = #official
* identifier[0].system = "http://example.org"
* identifier[0].value = "ee8d4ac0-545c-4501-8d7e-646bfbda1db5"
* name.family = "Jones"
* name.given[0] = "Dorothy"
* gender = #female
* birthDate = "1947-11-25"

Instance: pcoPractitionerGonzalez
InstanceOf: USCorePractitionerProfile
Title: "Health & Wellness Coach" 
Description: "Maria Gonzalez, NBC-HWC"
Usage: #example
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "9941339100"
* name.family = "Gonzalez"
* name.given[0] = "Maria"
* name.suffix = "NBC-HWC"
* name.text = "Maria Gonzalez, NBC-HWC"
* gender = #female

Instance: pcoPractitionerAnderson
InstanceOf: USCorePractitionerProfile
Title: "Primary Care Physician" 
Description: "John Anderson, MD"
Usage: #example
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "9941339100"
* name.family = "Anderson"
* name.given[0] = "John"
* name.suffix = "MD"
* name.text = "John Anderson, MD"
* gender = #male

Instance: pcoGoalPainLevelExample
InstanceOf: PCOGoalProfile
Title: "Goal without GAS or PROM"
Description: "Person-centered goal without attainment scaling or PROM"
Usage: #example
* lifecycleStatus = #active
* achievementStatus = $GoalAchievement#in-progress
* category[pco] = PCOConcepts#what-matters "What Matters"
* category[goal-domain] = PCOGoalDomains#physical-function "Physical Function"
* subject = Reference(pcoPatientJones)
* expressedBy = Reference(pcoPatientJones)
* startDate = "2024-02-15"
* target.dueDate = "2024-06-30"
* description.text = "Maintain pain level below 5 while walking"

Instance: pcoReadinessAssessmentPanel
InstanceOf: PCOReadinessAssessmentProfile
Title: "Readiness Assessment panel"
Description: "Readiness assessment with two members"
Usage: #example
* status = #final 
* code = ReadinessConcepts#readiness-assessment "Readiness assessment"
* focus = Reference(pcoGoalWalkDogExample)
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-04-10T15:05:00Z"
* hasMember[0] = Reference(pcoReadinessAssessmentImportance)
* hasMember[1] = Reference(pcoReadinessAssessmentConfidence)

Instance: pcoReadinessAssessmentImportance
InstanceOf: PCOReadinessAssessmentProfile
Title: "Readiness Assessment: Importance"
Description: "Readiness assessment of importance for a goal"
Usage: #example
* status = #final 
* code = ReadinessConcepts#importance "Importance of change"
* focus = Reference(pcoGoalWalkDogExample)
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-04-10T15:05:00Z"
* valueCodeableConcept = $LNC#LA10140-4 "8"
* derivedFrom = Reference(pcoReadinessAssessmentPanel)

Instance: pcoReadinessAssessmentConfidence
InstanceOf: PCOReadinessAssessmentProfile
Title: "Readiness Assessment: Confidence"
Description: "Readiness assessment of confidence to achieve a goal"
Usage: #example
* status = #final 
* code = ReadinessConcepts#confidence "Confidence to change"
* focus = Reference(pcoGoalWalkDogExample)
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-04-10T15:05:00Z"
* valueCodeableConcept = $LNC#LA6114-8 "3"
* derivedFrom = Reference(pcoReadinessAssessmentPanel)
