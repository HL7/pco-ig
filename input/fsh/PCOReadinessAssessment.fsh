
Profile: PCOReadinessAssessmentProfile
Parent: USCoreObservationScreeningAssessmentProfile
Id: pco-readiness-assessment
Title: "Readiness Assessment"
Description: "Assessment of a person's readiness for change including importance and confidence for making that change."
* code from ReadinessAssessmentType (extensible)
  * ^binding.description = "Type of readiness being assessed"
* focus 0..1 MS
* focus only Reference(Goal or Observation)
  * ^short = "The goal or observation that is assessed"

* value[x] only CodeableConcept
* valueCodeableConcept from NumericRatingScaleFrom0-10 (required)
  * ^short = "A scale value ranging from 0 to 10"
* hasMember 0..* MS
* hasMember only Reference(PCOReadinessAssessmentProfile)
  * ^short = "Reference to panel members"
* derivedFrom 0..* MS
* derivedFrom only Reference(USCoreObservationScreeningAssessmentProfile or USCoreQuestionnaireResponseProfile)
  * ^short = "Related Observation(s) or other resource the observation is made from"

CodeSystem: ReadinessConcepts
Id: readiness-assessment-concepts
Title: "Readiness Assessment Concepts"
Description: "Code system to types of readiness for change."
* ^caseSensitive = true
* ^experimental = false
* ^status = #active
* insert PCOCodeSystemPublisher
* #readiness-assessment "Readiness assessment"
    "Panel code for readiness scales"
* #importance "Importance of change"
* #confidence "Confidence to change"

ValueSet: ReadinessAssessmentType
Id: readiness-assessment-codes
Title: "Readiness Assessment Codes"
Description: "Terminology codes for readiness assessment types."
* ^experimental = false
* include codes from system ReadinessConcepts