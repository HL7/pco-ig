Profile: PCOPersonalPrioritiesOrganizer
Parent: List
Id: pco-personal-priorities-organizer
Title: "Personal Priorities Organizer"
Description: "Personal Priorities Organizer is used to represent a set of person-centered goals, preferences or care experiences in a preferred ranked order."

// * title 1..1 // Should this be required or MS?

// Review: this code is part of an ADI panel
* code 1..1
* code = $LNC#81340-2
  * ^short = "Goals AndOr preferences in order of priority"

* subject 1..1 MS
* subject only Reference(USCorePatient)

* orderedBy 1..1 MS
* orderedBy = http://terminology.hl7.org/CodeSystem/list-order#priority

* entry.item only Reference(PCOGoalProfile or WhatMattersPriority or WhatMattersAssessment or PCOGoalBarrierProfile or PCOCareTradeOffProfile)