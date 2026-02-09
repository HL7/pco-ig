RuleSet: PCOCodeSystemPublisher
* ^publisher = "HL7 International / Patient Care"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pc

RuleSet: LOINCCopyrightNotice
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

RuleSet: SNOMEDCopyrightNotice
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology. The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"

// LOINC ValueSets

Alias: NumericRatingScaleFrom0-5 = http://loinc.org/vs/LL4460-3

Alias: NumericRatingScaleFrom0-10 = http://loinc.org/vs/LL2335-9

Alias: TrueFalseUnknownValueSet = http://loinc.org/vs/LL3865-4

Alias: YesNoUnknownValueSet = http://loinc.org/vs/LL3044-6

CodeSystem: PCOConcepts
Id: pco-concepts-temporary
Title: "Person-Centered Outcome Concepts"
Description: "Code system to identify resource codes and category codes for Person-Centered Outcomes. Temporary codes are provided for non-production use while new standard terminology codes are submitted."
* ^caseSensitive = true
* ^experimental = true
* ^status = #draft
* ^hierarchyMeaning = #is-a
* insert PCOCodeSystemPublisher
* #person-centered "Person-Centered"
    "General category for person-centered goals and observations"
* #what-matters "What Matters"
    "Identify each person's specific health outcome goals and priorities across settings of care."
* #wellbeing "Well-Being"
    "Indicator for a person's well-being."
// * #mentation "Mentation"
//     "Prevent, identify, treat, and manage dementia, depression, and delirium and other mental health conditions across settings of care."
// * #mobility "Mobility"
//     "Ensure that person can move safely every day in order to maintain function and do What Matters."
// * #medication "Medicaion"
//     "If medication is necessary, use Age-Friendly medication that does not interfere with What Matters to the person, Mobility, or Mentation across settings of care."

ValueSet: PCOCategories
Id: pco-categories
Title: "Person-Centered Categories"
Description: "Categories for person-centered assessment or goals."
* ^experimental = false
* PCOConcepts#person-centered "Person-Centered"
* PCOConcepts#what-matters "What Matters"
* PCOConcepts#wellbeing "Well-Being"
// * PCOConcepts#mentation "Mentation"
// * PCOConcepts#mobility "Mobility"
// * PCOConcepts#medication "Medication"

CodeSystem: PCOGoalDomains
Id: pco-goal-domains-temporary
Title: "PCO Goal Domains"
Description: "Goal domain codes used to identify the category for PCO resources. Temporary codes are provided for non-production use while new standard terminology codes are submitted."
* ^caseSensitive = true
* ^experimental = true
* ^status = #draft
* insert PCOCodeSystemPublisher
* #housing "Housing"
    "Having acceptable housing that is appropriate for a person's needs."
* #access-to-services "Access To Services"
    "Ability to access, afford, and utilize appropriate health and community resources. Includes access to transportation, stable food resources, and assistance with financial concerns."
* #caregiver-needs "Caregiver Needs"
    "Supporing the needs of a person's caregiver"
* #end-of-life "End Of Life"
    "Planning for end-of-life care and desires to reduce burden on family or others."
* #independence "Independence"
    "Ability to live independently without help or assistance from others."
* #legal "Legal"
    "Having adequate support for legal issues such as child custody, medical power of attorney, etc."
* #managing-conditions "Managing Conditions"
    "Satisfaction with health care received or desired, and experiences with providers and the health care system."
* #medication-management "Medication Management"
    "Satisfaction with ability to manage medications."
* #improving-health-and-wellness "Improving Health And Wellness"
    "Ability to develop, improve and maintain positive health and wellness habits."
* #physical-function "Physical Function"
    "Ability to manage physical functioning, physical symptoms or conditions, and improve or maintain ability to participate in physical activities."
* #social-functioning "Social Functioning"
    "Ability to engage in social activities."
* #emotional-and-mental-health "Emotional And Mental Health"
    "Having a positive outlook on life."

ValueSet: PCOGoalDomainCategories
Id: pco-goal-domain-categories
Title: "PCO Goal Domain Categories"
Description: "Value set to identify the goal domain category for PCO resources."
* ^experimental = false
// * include codes from system PCOGoalDomains
// Cannot use "include codes" because cqframework -EnsureExecutableValueSet does not support this expansion
* PCOGoalDomains#housing "Housing"
* PCOGoalDomains#access-to-services "Access To Services"
* PCOGoalDomains#caregiver-needs "Caregiver Needs"
* PCOGoalDomains#end-of-life "End Of Life"
* PCOGoalDomains#independence "Independence"
* PCOGoalDomains#legal "Legal"
* PCOGoalDomains#managing-conditions "Managing Conditions"
* PCOGoalDomains#medication-management "Medication Management"
* PCOGoalDomains#improving-health-and-wellness "Improving Health And Wellness"
* PCOGoalDomains#physical-function "Physical Function"
* PCOGoalDomains#social-functioning "Social Functioning"
* PCOGoalDomains#emotional-and-mental-health "Emotional And Mental Health"
