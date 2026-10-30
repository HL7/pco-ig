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
* ^status = #active
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

ValueSet: PCOGoalDomainCategories
Id: pco-goal-domain-categories
Title: "PCO Goal Domain Categories"
Description: "Value set to identify the goal domain category for PCO resources."
* ^experimental = false
// * include codes from system $SCT where concept descendant-of #1031431000124106
* $SCTUS#1031441000124101 "Housing goal domain"
* $SCTUS#1031451000124104 "Access to services and supports goal domain"
* $SCTUS#1031461000124102 "Caregiver needs and concerns goal domain"
* $SCTUS#1031471000124109 "End of life goal domain"
* $SCTUS#1031481000124107 "Independence goal domain"
* $SCTUS#1031491000124105 "Legal goal domain"
* $SCTUS#1031501000124102 "Managing conditions and symptoms goal domain"
* $SCTUS#1031511000124104 "Medication management goal domain"
* $SCTUS#1031521000124107 "Improving health and wellness goal domain"
* $SCTUS#1031531000124105 "Physical function goal domain"
* $SCTUS#1031541000124100 "Social and role functioning goal domain"
* $SCTUS#1031551000124103 "Emotional and mental health goal domain"
