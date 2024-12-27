
Instance: pcoWhatMattersPriorityExample
InstanceOf: WhatMattersPriority
Title: "What Matters Priority: Moving the Body"
Description: "What Matters observation recorded by a Patient to indicate their priority for well-being."
Usage: #example
* status = #final 
* category[wellbeing-category] = WellBeingConcepts#wellbeing-priority "Well-Being Priority"
* code = VAWholeHealthExample#body "Moving the Body"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:05:00Z"
* valueBoolean = true

Instance: pcoWhatMattersStatementExample
InstanceOf: WhatMattersStatement
Title: "What Matters Statement: Family & Friends"
Description: "What Matters observation added by a Patient to record a statement about a well-being focus area."
Usage: #example
* status = #final 
* category[wellbeing-category] = WellBeingConcepts#wellbeing-statement "Well-Being Statement"
* code = VAWholeHealthExample#relationships "Family, Friends & Co-Workers"
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T14:30:00Z"
* valueString = "I would like to meet my friends again for morning walks, but my knee pain prevents me from doing that."

Instance: pcoWhatMattersBodyExample
InstanceOf: WhatMattersAssessment
Title: "What Matters: Moving the Body"
Description: "What Matters assessment observation recorded by a Patient as preparation for creating PCO goals and CarePlan action steps."
Usage: #example
* status = #final 
* category[wellbeing-category] = WellBeingConcepts#wellbeing-assessment "Well-Being Assessment"
* code = VAWholeHealthExample#body "Moving the Body"
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
// * category[wellbeing-category] = WellBeingConcepts#wellbeing-assessment "Well-Being Assessment"
* code = VAWholeHealthExample#relationships "Family, Friends & Co-Workers"
* status = #final 
* subject = Reference(pcoPatientJones)
* performer = Reference(pcoPatientJones)
* effectiveDateTime = "2024-03-27T15:20:00Z"
* component[nowRating].valueInteger = 3
* component[nowReasons].valueString = "I am still recovering from isolation during COVID and now physical difficulty leaving my home."
* component[futureRating].valueInteger = 9
* component[futureChanges].valueString = "I want to walk outside and visit friends in the park."
