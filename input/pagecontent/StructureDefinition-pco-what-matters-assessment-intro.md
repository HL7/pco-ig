The What Matters Assessment Observation inherits from the [US Core Observation Screening Assessment Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html); refer to it for scope and usage definitions. The US Core profile meets the requirements of the U.S. Core Data for Interoperability (USCDI) Health Status Assessments Data Class. It sets the minimum expectations for the Observation Resource to record, search, and fetch observations representing the questions and responses to surveys and screening and assessment tools.

* See the [US Core Screening and Assessments](https://hl7.org/fhir/us/core/STU6.1/screening-and-assessments.html) guidance page for how this profile represents surveys, screenings, and assessments.
  * Each response to individual questions and each answer to a multi-select or “check all that apply” question is a separate US Core Screening and Assessments Observation. The question is communicated in Observation.code, and the answer is in Observation.value.
  * Multi-question screenings and assessments use the US Core Screening and Assessments Observation to represent a “panel” or grouping. The multi-question surveys or assessments Observation.code is an overarching assessment or screening code, and the Observation.value element SHOULD be empty. Observation.hasMember references US Core Screening and Assessments Observations that represent the responses to each question in the screening or assessment.

**Example Usage Scenarios:**

The following are example usage scenarios for this Profile:
* Record or update observations related to a person's assessment of What Matters. These observations may be extracted from a QuestionnaireResponse that inludes panel(s) of question/answer responses about what matters most, or observations created from a dedicated assessment application without use of a Questionnaire.
* Query for observations representing a patient's assessment of What Matters.

### Mandatory and Must Support Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](formal_specification.html#must-support) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each Well-Being Assessment Observation must have:**

1. a status
1. a category code of "survey"
1. a code identifying the type of assessment
1. a patient

**Each Well-Being Assessment Observation must support:**

1. additional categories that further specify the assessment or screening
1. a time indicating when the assessment was taken
1. who answered the questions
1. either a value containing a question answer or hasMember referencing Observations within a panel of questions.
1. most common assessment values are:
   1. a string containing a free-text description of what matters to the patient
   1. or a codeable concept containing an assessment coded response
