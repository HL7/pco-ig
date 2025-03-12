The Goal Attainment Scaling (GAS) score observation records a LOINC coded score that indicates progress on a goal and also states whether that progress assessment was made by a patient, practitioner, or caregiver.

The standardized approach for capturing assessment results is well documented in the US Core implementation guide. This GAS score observation profile inherits from the [US Core Observation Screening Assessment Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html); refer to it for scope and usage guidance. The US Core profile meets the requirements of the U.S. Core Data for Interoperability (USCDI) Health Status Assessments Data Class. It sets the minimum expectations for the Observation Resource to record, search, and fetch observations representing the questions and responses to surveys and screening and assessment tools.

**Example Usage Scenarios:**

The following are example usage scenarios for this Profile:
* Record or update observations related to a person's progress score using GAS for a specified goal.
* Query for observations representing a patient's GAS assessment score.

### Mandatory and Must Support Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](formal_specification.html#must-support) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each GAS Score Observation must have:**

1. a status
1. a category code of "survey"
1. a code identifying the type GAS assessment
1. a patient

**Each GAS Score Observation must support:**

1. additional categories that further specify the assessment or screening
1. a time or period indicating when the assessment was taken
1. who answered the questions
1. a focus referring to a Goal that was assessed for progress
1. a codeable concept value containing the LOINC code for the GAS score
