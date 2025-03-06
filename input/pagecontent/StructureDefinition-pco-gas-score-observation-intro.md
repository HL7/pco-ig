The Goal Attainment Scaling (GAS) score observation records a LOINC coded score that indicates progress on a goal and also states whether that progress assessment was made by a patient, practitioner, or caregiver.

This profile inherits from the [US Core Simple Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-simple-observation.html); refer to it for scope and usage guidance. The US Core profile is meant to capture any “simple” observations that are not otherwise covered by other US Core Observation profiles. It promotes interoperability and adoption through common implementation by setting minimum expectations for the Observation resource to record, search, and retrieve observations by providing the floor for standards development for specific use cases.

**Example Usage Scenarios:**

The following are example usage scenarios for this Profile:
* Record or update observations related to a person's progress score using GAS for a specified goal.
* Query for observations representing a patient's GAS assessment score.

### Mandatory and Must Support Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](formal_specification.html#must-support) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each GAS Score Observation must have:**

1. a status
1. a category code, preferably "survey", but others can be used from the US Core value set.
1. a code identifying the type GAS assessment
1. a patient

**Each GAS Score Observation must support:**

1. additional categories that further specify the assessment or screening
1. a time indicating when the assessment was taken
1. who answered the questions
1. a focus referring to a Goal that was assessed for progress
1. a codeable concept value containing the LOINC code for the GAS score
