The PCO Goal Profile inherits from the [US Core Goal Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-goal.html); refer to it for scope and usage guidance. It sets minimum expectations for the Goal resource to record, search, and fetch Goal information associated with a patient to promote interoperability and adoption through common implementation.

**Example Usage Scenarios:**

The following are example usage scenarios for this Profile:
* Record or update a person's goals.
* Query for a patient's person-centered goals.
* Query for a patient's goals in a specified goal domain category.
* Query for a patient's goals that address a specified assessment observation.

### Mandatory and Must Support Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](formal_specification.html#must-support) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each Goal must have:**

1. a status
1. text description of the goal
1. a patient
1. a start date

**Each Goal must support:**

1. additional categories that further specify the goal*
1. target date(s)
1. who established the goal
1. addresses What Matters Assessment observation(s)

**Profile Specific Implementation Guidance:**

* *Although Goal 'pco' and 'goal-domain' categories are both marked as Must Support, the server system is not required to support both, but SHALL support at least one of these elements. A client application SHALL support both elements. These categories enable quality measures and other applications to determine which patient goals are person-centered.