
Profile: WhatMattersAssessment
Parent: USCoreObservationScreeningAssessmentProfile
Id: pco-what-matters-assessment
Title: "What Matters Assessment"
Description: "Assessment observation for What Matters to a person. May be a panel assessment with member observations."
* insert PCOCategory
* code from WhatMattersCodesExample (preferred)

/*

Profile: WhatMattersAssessmentComponents
Parent: USCoreObservationScreeningAssessmentProfile
Id: pco-what-matters-assessment-components
Title: "What Matters Assessment with Components"
Description: "DEPRECATED: Assessment observation for one element of a person's well-being, with a free-text description, coded value, or component values rating where a person is now and where they would like to be in the future."
* insert PCOCategory
* code from WellBeingDomainValueSet (preferred)
* value[x] 0..1 MS
* value[x] only boolean or string or CodeableConcept
  * ^short = "Free-text or coded assessment of this well-being domain"
* component
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    nowRating 0..1 MS and
    nowReasons 0..1 MS and
    futureRating 0..1 MS and
    futureChanges 0..1 MS
  * ^short = "Components representing Well-Being rating"
* component[nowRating]
  * code = WellBeingConcepts#now-rating
    * ^short = "Where are you now?"
  * insert RatingValueInteger
* component[nowReasons]
  * code = WellBeingConcepts#now-reasons
    * ^short = "What are the reasons you chose this number?"
  * insert RatingValueString
* component[futureRating]
  * code = WellBeingConcepts#future-rating
    * ^short = "Where would you like to be?"
  * insert RatingValueInteger
* component[futureChanges]
  * code = WellBeingConcepts#future-changes
    * ^short = "What changes could you make to help you get there?"
  * insert RatingValueString

RuleSet: RatingValueInteger
* value[x] 1..1 MS
* value[x] only integer
  * ^short = "Rating on scale from low to high"

RuleSet: RatingValueString
* value[x] 1..1 MS
* value[x] only string
  * ^short = "Reasons for your rating"

*/