The Readiness Assessment Observation records a person's responses to questions about their readiness to make a change, e.g. to achieve a person-centered goal. Assessing a person's readiness for change typically consists of asking two questions:
* "On a scale of 1 to 10, how important is it for you to… (your goal)?" 
* "On a scale of 1 to 10, how confident are you that you will be able to… (your goal)?".

The Readiness Assessment Observation inherits from the [US Core Observation Screening Assessment Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html); refer to it for scope and usage guidance. The US Core profile meets the requirements of the U.S. Core Data for Interoperability (USCDI) Health Status Assessments Data Class. It sets the minimum expectations for the Observation Resource to record, search, and fetch observations representing the questions and responses to surveys and screening and assessment tools.

**Example Usage Scenarios:**

The following are example usage scenarios for this Profile:
* Record or update observations related to a person's assessment of readiness for change. These observations may be extracted from a QuestionnaireResponse that inludes panel(s) of question/answer responses about importance or confidence, or observations created from a dedicated assessment application without use of a Questionnaire.
* Query for observations representing a patient's assessment of readiness for change focused on a specified goal.

### Mandatory and Must Support Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](formal_specification.html#must-support) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each Readiness Assessment Observation must have:**

1. a status
1. a category code of "survey"
1. a code identifying the type of readiness assessment
1. a patient

**Each Readiness Assessment Observation must support:**

1. additional categories that further specify the assessment or screening
1. a time indicating when the assessment was taken
1. who answered the questions
1. a focus referring to a Goal or Observation that was assessed for readiness to change
1. a value containing either:
   * a codeable concept containing a scale value from 0 to 10 from the [LOINC Answer List](https://loinc.org/LL2335-9/)
   * or hasMember referencing Observations within a panel of questions.
