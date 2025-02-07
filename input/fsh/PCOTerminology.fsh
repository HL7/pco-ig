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
Id: pco-concepts
Title: "Person-Centered Outcome Concepts"
Description: "Code system to identify resource codes and category codes for Person-Centered Outcomes."
* ^caseSensitive = true
* ^experimental = false
* ^status = #active
* ^hierarchyMeaning = #is-a
* insert PCOCodeSystemPublisher
* #person-centered "Person-Centered"
    "General category for person-centered goals and observations"
* #what-matters "What Matters"
    "Identify each person's specific health outcome goals and priorities across settings of care."
* #well-being "Well-Being"
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
* PCOConcepts#well-being "Well-Being"
// * PCOConcepts#mentation "Mentation"
// * PCOConcepts#mobility "Mobility"
// * PCOConcepts#medication "Medication"
