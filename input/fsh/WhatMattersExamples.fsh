
Instance: pcoWhatMattersPurposeExample
InstanceOf: WhatMattersAssessment
Title: "What Matters Purpose Statement"
Description: "What Matters observation added by a Patient to record a free-text statement about their sense of purpose."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = $SCT#247751003 "Sense of purpose"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-07-30T10:35:00Z"
* valueString = "I want to remain healthy and active so that I can travel with my sister and play with my grandchildren."

Instance: pcoWhatMattersStatementExample
InstanceOf: WhatMattersAssessment
Title: "What Matters Statement as Free-Text"
Description: "What Matters observation added by a Patient to record a free-text statement about a well-being focus area."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = PersonalHealthInventory#nourishment "Food & Drink"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T12:30:00Z"
* valueString = "I would like to learn how to prepare healthy meals, including healthy snacks while I am feeling stressed."

Instance: pcoWhatMattersFoodExample
InstanceOf: WhatMattersAssessment
Title: "What Matters: Food and Drink (Panel)"
Description: "What Matters assessment observation panel."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = PersonalHealthInventory#nourishment "Food & Drink"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T15:10:00Z"
* hasMember[0] = Reference(pcoWhatMattersFocusAreaExample)
* hasMember[1] = Reference(pcoWhatMattersFoodExampleNowRating)
* hasMember[2] = Reference(pcoWhatMattersFoodExampleNowReasons)
* hasMember[3] = Reference(pcoWhatMattersFoodExampleFutureRating)

Instance: pcoWhatMattersFoodExampleNowRating
InstanceOf: WhatMattersAssessment
Title: "What Matters: Food and Drink, Now Rating"
Description: "What Matters assessment observation for now rating."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#now-rating "Now Rating"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T15:10:00Z"
* valueInteger = 2
* derivedFrom = Reference(pcoWhatMattersFoodExample)

Instance: pcoWhatMattersFoodExampleNowReasons
InstanceOf: WhatMattersAssessment
Title: "What Matters: Food and Drink, Now Reasons"
Description: "What Matters assessment observation for now reasons description."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#now-reasons "Now Reasons"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T15:10:00Z"
* valueString = "I keep snacking on jumk food all day"
* derivedFrom = Reference(pcoWhatMattersFoodExample)

Instance: pcoWhatMattersFoodExampleFutureRating
InstanceOf: WhatMattersAssessment
Title: "What Matters: Food and Drink, Future Rating"
Description: "What Matters assessment observation for future rating."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#future-rating "Future Rating"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T15:10:00Z"
* valueInteger = 5
* derivedFrom = Reference(pcoWhatMattersFoodExample)

Instance: pcoWhatMattersRelationshipsExample
InstanceOf: WhatMattersAssessment
Title: "What Matters: Family & Friends (Panel)"
Description: "What Matters assessment observation panel."
Usage: #example
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = PersonalHealthInventory#relationships "Family, Friends & Co-Workers"
* status = #final 
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T15:20:00Z"
* hasMember[0] = Reference(pcoWhatMattersRelationshipsExampleNowRating)
* hasMember[1] = Reference(pcoWhatMattersRelationshipsExampleFutureRating)
* hasMember[2] = Reference(pcoWhatMattersRelationshipsExampleFutureChanges)
* hasMember[3] = Reference(pcoWhatMattersFocusAreaExample)

Instance: pcoWhatMattersRelationshipsExampleNowRating
InstanceOf: WhatMattersAssessment
Title: "What Matters: Family & Friends, Now Rating"
Description: "What Matters assessment observation for now rating."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#now-rating "Now Rating"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T15:10:00Z"
* valueInteger = 1
* derivedFrom = Reference(pcoWhatMattersRelationshipsExample)

Instance: pcoWhatMattersRelationshipsExampleFutureRating
InstanceOf: WhatMattersAssessment
Title: "What Matters: Family & Friends, Future Rating"
Description: "What Matters assessment observation for future rating."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#future-rating "Future Rating"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T15:10:00Z"
* valueInteger = 4
* derivedFrom = Reference(pcoWhatMattersRelationshipsExample)

Instance: pcoWhatMattersRelationshipsExampleFutureChanges
InstanceOf: WhatMattersAssessment
Title: "What Matters: Family & Friends, Future Changes"
Description: "What Matters assessment observation for future changes description."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#future-changes "Future Changes"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T15:10:00Z"
* valueString = "I want to join a small group of friends for lunch."
* derivedFrom = Reference(pcoWhatMattersRelationshipsExample)

Instance: pcoWhatMattersFocusAreaExample
InstanceOf: WhatMattersAssessment
Title: "What Matters Focus: Family & Friends"
Description: "What Matters observation recorded by a Patient to indicate their focus area for well-being."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = $SCT#363702006 "Has focus"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2025-02-14T17:05:00Z"
* valueCodeableConcept = $LNC#LA14495-8 "True"
* derivedFrom = Reference(pcoWhatMattersRelationshipsExample)