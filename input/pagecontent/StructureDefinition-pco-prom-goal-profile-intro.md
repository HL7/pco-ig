Patient-Reported Outcome Measures (PROM) and Goal Attainment Scaling (GAS) are two alternative approaches for measuring goal outcomes, progress and achievement. A person-centered goal may use either of these approaches where the choice is based on practitioner or patient preferences, support by a provider's system, or availability of an appropriate PROM instrument. This profile supports goals using PROM measurement. One example PROM is the seven-question Generalized Anxiety Disorder (GAS-7) tool that assesses the presence and degree of a patient's anxiety.

### Mandatory and Must Support Data Elements

This Person-Centered PROM Goal Profile inherits shared definitions from the [PCO Goal Profile](StructureDefinition-pco-goal-profile.html); refer to it for scope and usage guidance. It sets minimum expectations for all person-centered Goal resources. Only added constraints are listed here.

**Each Goal must have:**

1. a status
1. text description of the goal
1. a patient
1. a start date
1. target measure LOINC code for a PROM score
1. target detail quantity with a comparator and value, e.g. < 10

**Each Goal must support:**

1. additional categories that further specify the goal*
1. target date(s)
1. who established the goal
1. addresses What Matters Assessment observation(s)
