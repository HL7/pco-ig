
Instance: pcoWhatMattersStatementExample
InstanceOf: WhatMattersAssessment
Title: "What Matters Statement: Family & Friends"
Description: "What Matters observation added by a Patient to record a free-text statement about a well-being focus area."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = VAWholeHealth#relationships "Family, Friends & Co-Workers"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T14:30:00Z"
* valueString = "I would like to meet my friends again for morning walks, but my knee pain prevents me from doing that."

Instance: pcoWhatMattersBodyExample
InstanceOf: WhatMattersAssessment
Title: "What Matters: Moving the Body (Panel)"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = VAWholeHealth#body "Moving the Body"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:10:00Z"
* hasMember[0] = Reference(pcoWhatMattersFocusAreaExample)
* hasMember[1] = Reference(pcoWhatMattersBodyExampleNowRating)
* hasMember[2] = Reference(pcoWhatMattersBodyExampleNowReasons)
* hasMember[3] = Reference(pcoWhatMattersBodyExampleFutureRating)

Instance: pcoWhatMattersFocusAreaExample
InstanceOf: WhatMattersAssessment
Title: "What Matters Focus: Moving the Body"
Description: "What Matters observation recorded by a Patient to indicate their focus area for well-being."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = $SCT#363702006 "Has focus"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:05:00Z"
* valueCodeableConcept = $LNC#LA14495-8 "True"
* derivedFrom = Reference(pcoWhatMattersBodyExample)

Instance: pcoWhatMattersBodyExampleNowRating
InstanceOf: WhatMattersAssessment
Title: "What Matters: Moving the Body, Now Rating"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#now-rating "Now Rating"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:10:00Z"
* valueCodeableConcept = $LNC#LA34479-8 "2 or more"
* derivedFrom = Reference(pcoWhatMattersBodyExample)

Instance: pcoWhatMattersBodyExampleNowReasons
InstanceOf: WhatMattersAssessment
Title: "What Matters: Moving the Body, Now Reasons"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#now-reasons "Now Reasons"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:10:00Z"
* valueString = "My knee pain prevents me from walking."
* derivedFrom = Reference(pcoWhatMattersBodyExample)

Instance: pcoWhatMattersBodyExampleFutureRating
InstanceOf: WhatMattersAssessment
Title: "What Matters: Moving the Body, Future Rating"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#future-rating "Future Rating"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:10:00Z"
* valueCodeableConcept = $LNC#LA10140-4 "8"
* derivedFrom = Reference(pcoWhatMattersBodyExample)

Instance: pcoWhatMattersRelationshipsExample
InstanceOf: WhatMattersAssessment
Title: "What Matters: Family & Friends (Panel)"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = VAWholeHealth#relationships "Family, Friends & Co-Workers"
* status = #final 
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:20:00Z"
* hasMember[0] = Reference(pcoWhatMattersRelationshipsExampleNowRating)
* hasMember[1] = Reference(pcoWhatMattersRelationshipsExampleFutureRating)
* hasMember[2] = Reference(pcoWhatMattersRelationshipsExampleFutureChanges)

Instance: pcoWhatMattersRelationshipsExampleNowRating
InstanceOf: WhatMattersAssessment
Title: "What Matters: Family & Friends, Now Rating"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#now-rating "Now Rating"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:10:00Z"
* valueCodeableConcept = $LNC#LA6114-8 "3"
* derivedFrom = Reference(pcoWhatMattersRelationshipsExample)

Instance: pcoWhatMattersRelationshipsExampleFutureRating
InstanceOf: WhatMattersAssessment
Title: "What Matters: Family & Friends, Future Rating"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#now-rating "Now Rating"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:10:00Z"
* valueCodeableConcept = $LNC#LA10141-2 "9"
* derivedFrom = Reference(pcoWhatMattersRelationshipsExample)

Instance: pcoWhatMattersRelationshipsExampleFutureChanges
InstanceOf: WhatMattersAssessment
Title: "What Matters: Moving the Body, Future Changes"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = WhatMattersConcepts#future-changes "Future Changes"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:10:00Z"
* valueString = "I want to walk outside and visit friends in the park."
* derivedFrom = Reference(pcoWhatMattersRelationshipsExample)

/*
Instance: pcoWhatMattersBodyExample
InstanceOf: WhatMattersAssessment
Title: "What Matters: Moving the Body"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* status = #final 
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = VAWholeHealth#body "Moving the Body"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:10:00Z"
* component[nowRating].valueInteger = 2
* component[nowReasons].valueString = "My knee pain prevents me from walking."
* component[futureRating].valueInteger = 7

Instance: pcoWhatMattersRelationshipsExample
InstanceOf: WhatMattersAssessment
Title: "What Matters: Family & Friends"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* category[pco] = PCOConcepts#what-matters "What Matters"
* code = VAWholeHealth#relationships "Family, Friends & Co-Workers"
* status = #final 
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:20:00Z"
* component[nowRating].valueInteger = 3
* component[nowReasons].valueString = "I am still recovering from isolation during COVID and now physical difficulty leaving my home."
* component[futureRating].valueInteger = 9
* component[futureChanges].valueString = "I want to walk outside and visit friends in the park."

*/
