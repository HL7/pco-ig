Identification of goal barriers is a beneficial part of person-centered care so that measurement and care plans can address these barriers that might otherwise prevent goal achievement. A goal barrier could be selected from a value set of barrier types, e.g. drawn from SNOMED CT findings, that is used to prompt a person to identify barriers, as well as supporting analysis and reporting on common barriers across a patient population. Alternatively, a barrier may be described by a person in plain text. Either option is allowed by this profile for the observation value.

The Goal Barrier Observation inherits from the [US Core Simple Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-simple-observation.html); refer to it for scope and usage guidance. The US Core profile is meant to capture any “simple” observations that are not otherwise covered by other US Core Observation profiles. It promotes interoperability and adoption through common implementation by setting minimum expectations for the Observation resource to record, search, and retrieve observations by providing the floor for standards development for specific use cases.

**Example Usage Scenarios:**

The following are example usage scenarios for this Profile:
* Record or update observations related to a person's identifiation of goal barriers.
* Query for observations representing a patient's assessment of barriers focused on a specified goal.

### Mandatory and Must Support Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](formal_specification.html#must-support) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each Goal Barrier Observation must have:**

1. a status
1. a category code of "survey"
1. a code from an extensible value set, with default SNOMED CT code for "Assessment of barriers to meet care plan goals performed"
1. a patient
1. a value containing either:
   * a codeable concept containing code for the type of barrier
   * or a string containing a free-text description of the barrier

**Each Goal Barrier Observation must support:**

1. additional categories that further specify the assessment
1. a time indicating when the assessment was taken
1. a focus referring to a Goal that was assessed for barriers
1. notes containing additional description of the barrier
