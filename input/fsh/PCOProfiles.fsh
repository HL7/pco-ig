
RuleSet: PCOCategory
* category MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* category contains
    pco 0..1 MS
* category[pco] from PCOCategories (required)
  * ^short = "Person-Centered resource category"

RuleSet: GoalDomainCategory
* category MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    goal-domain 0..* MS
* category[goal-domain] from PCOGoalDomainsExample (required) // must be (required) when slicing category to eliminate QA errors
  * ^short = "Person-Centered Outcome goal domain category"
  // Include same binding description as in US Core profiles.
* category[goal-domain]
  * ^binding.description = "Note that other codes are permitted, see [Required Bindings When Slicing by Value Sets](http://hl7.org/fhir/us/core/general-requirements.html#required-bindings-when-slicing-by-valuesets)"

Profile: PCOGoalProfile
Parent: USCoreGoalProfile
Id: pco-goal-profile
Title: "Person-Centered Goal"
Description: "Person-centered goal focused on an individual's well-being. A Person-centered goal SHALL include either a PCO category, or address a What Matters assessment."
* insert PCOCategory
* insert GoalDomainCategory
* expressedBy 0..1 MS
* expressedBy only Reference(USCorePatientProfile or USCorePractitionerProfile or USCoreRelatedPersonProfile)
* start[x] 1..1 MS
* start[x] only date
* addresses only Reference(Condition or Observation or RiskAssessment)
* addresses ^slicing.discriminator.type = #profile
* addresses ^slicing.discriminator.path = "resolve()"
* addresses ^slicing.rules = #open
* addresses contains SupportedAddresses 0..* MS
* addresses[SupportedAddresses] only Reference(WhatMattersAssessment)
  * ^short = "What Matters Assessment or Priority"
  * ^requirements = "When a goal addresses What Matters observations, Goal.addresses should reference instances that comply with the PCO What Matters Assessment of Priority profiles. However, references to other instance types are also possible."

// TODO: add a constraint that either Goal.category from GoalDomainCategory or Goal.addresses WhatMattersAssessment SHALL be present

Profile: PCOCarePlan
Parent: USCoreCarePlanProfile
Id: pco-care-plan
Title: "Person-Centered Care Plan"
Description: "A person-centered care plan SHALL reference a person-centered goal and SHALL include action steps that support progress toward achievement of the plan's goals and desired outcomes. A plan SHOULD address the person's stated priorities for what matters most to them. Action steps may include both treatment procedures and self-care steps identified by the person."
* insert PCOCategory
* goal 1..* MS
* goal ^slicing.discriminator.type = #profile
* goal ^slicing.discriminator.path = "resolve()"
* goal ^slicing.rules = #open
* goal contains SupportedGoals 1..* MS
* goal[SupportedGoals] only Reference(PCOGoalProfile)
  * ^short = "Person-centered goals supported by this plan"
* activity.detail 0..0
  * ^short = "Removed in FHIR R5"
* activity 1..*
* activity.reference 1..1 MS
  * ^short = "Action steps for person-centered goals"
