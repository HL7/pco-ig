The Patient-Reported Outcome Measure (PROM) score observation records a person's responses to questions contained in a PROM instrument. For example, PHQ-9 for depressions assessment, GAD-7 for anxiety assessment, or one of the PROMIS instruments. When tracking a person's outcomes or performing a digital quality measure, we are usually interested only in the _score_ that is calculated from a person's anwers. This profile specifies how that PROM score is recorded in the value of a single FHIR Observation resource.

The standardized approach for capturing assessment results, including PROM instruments, is well documented in the US Core implementation guide. This PROM score observation profile inherits from the [US Core Observation Screening Assessment Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html); refer to it for scope and usage guidance. The US Core profile meets the requirements of the U.S. Core Data for Interoperability (USCDI) Health Status Assessments Data Class. It sets the minimum expectations for the Observation Resource to record, search, and fetch observations representing the questions and responses to surveys and screening and assessment tools.

**Example Usage Scenarios:**

The following are example usage scenarios for this Profile:
* Record or update observations related to a person's assessment from a PROM instrument. These observations may be extracted from a QuestionnaireResponse that inludes panel(s) of question/answer responses about importance or confidence, or observations created from a dedicated assessment application without use of a Questionnaire.
* Query for observations representing a patient's PROM assessment score.

### Mandatory and Must Support Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](formal_specification.html#must-support) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each PROM Score Observation must have:**

1. a status
1. a category code of "survey"
1. a code identifying the type of PROM score
1. a patient

**Each PROM Score Observation must support:**

1. additional categories that further specify the assessment or screening
1. a time or period indicating when the assessment was taken
1. who answered the questions
1. a focus referring to a Goal that was assessed for progress
1. a value for the Quantity containing the PROM score
