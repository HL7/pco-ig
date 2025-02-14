The following user stories align with the steps in the [Person-Centered Outcomes Process Flow](https://build.fhir.org/ig/HL7/pco-ig/index.html#person-centered-outcomes-process-flow) diagram shown on the IG home page.

1. [Identify What Matters](#identify-what-matters)
1. [Document a PCO Goal](#document-a-pco-goal)
   * [Document a PCO Goal using Goal Attainment Scaling (GAS)](#document-a-pco-goal-with-goal-attainment-scaling-gas)
   * [Document a PCO Goal using Patient-Reported Outcome Measures (PROMs)](#document-a-pco-goal-using-patient-reported-outcome-measures-proms)
1. [Create a Care Plan](#create-a-care-plan)
1. [Track PCO Goal Follow-up](#track-pco-goal-follow-up)
1. [Execute Digital Quality Measures (dQMs)](#execute-digital-quality-measures-dqms)

### Identify What Matters

Coming soon!

Many alternative tools have been developed and are in use that enable individuals to reflect on What Matters Most for their health & well-being. One example is the U.S. Department of Veterns Affairs [Whole Health appoach to care](https://va.gov/wholehealth) that includes a [Circle of Health](https://www.va.gov/WHOLEHEALTH/circle-of-health/index.asp) and [Personal Health Inventory](https://www.va.gov/WHOLEHEALTH/docs/PHI_Jan2022_Final_508.pdf). The examples in this FHIR IG are based on VA's approach, but can be adapted to other asseessments used by different organizations.

**☛ See [Profile: Well-Being Assessment](StructureDefinition-pco-what-matters-assessment.html#profile)**

**☛ See [Example: Assessment Observation](Observation-pcoWhatMattersRelationshipsExample.html#root)**

### Document a PCO Goal

Dorothy is working with her health & wellness coach to identify priorities for what matters most to her and to create achievable goals and action steps. Her coach reviews Dorothy's responses to the What Matters Most assessment and guides her to define a goal for one of her focus areas to improve her physical health and social relationships. The health coach role also may be performed by Dorothy's primary care physician or others on her care team.

**☛ I want to practice being present when interacting w/ family and friends in an uplifting way at least 3x monthly.**

#### Document a PCO Goal using Goal Attainment Scaling (GAS)

Coming soon!

**☛ See [Profile: Person-Centered Goal using GAS](StructureDefinition-pco-gas-goal-profile.html#profile)**

**☛ See [Example: GAS Goal](Goal-pcoGoalWalkDogExample.html#root)**

#### Document a PCO Goal using Patient-Reported Outcome Measures (PROMs)

Coming soon!

**☛ See [Profile: Person-Centered Goal using PROM](StructureDefinition-pco-prom-goal-profile.html#profile)**

**☛ See [Example: PROM Goal for Anxiety](Goal-pcoGoalAnxietyExample.html#root)**

### Create a Care Plan

Coming soon!

### Track PCO Goal Follow-up
Dorothy uses a dedicated mobile app that helps her to set priorities, define goals and record goal attainment scores at monthly check-in intervals. Dorothy's health coach, Maria Gonzalez, uses a specialized person-centered care management platform that allows her to share care plan information with Dorothy. Maria used her application to enter goal attainment level details for Dorothy's goals during their shared decision-making session, and both Dorothy and Maria can use their applications to score goal attainment progress from their own perspectives.

If the health coaching role is performed by Dorothy's primary care physician or other member of that provider's organization, they also can use a dedicated SMART on FHIR app launched from within their EHR system to record and view Dorothy's priorities, goals, and progress on outcomes that matter most to her.

#### Track progress using using Goal Attainment Scaling (GAS)
Dorothy's mobile app prompts her once each month to record progress on attainment of her goals. For goals using Goal Attainment Scaling (GAS), the app displays a slider where Dorothy can rate herself using the five pre-defined goal attainment levels. Similarly, Dorothy's health & wellness coach or her primary care doctor can use their PCO apps to rate Dorothy's progress from their perspectives.

**☛ See [Profile: Goal Attainment Scaling (GAS) score by patient](StructureDefinition-pco-gas-score-observation.html#profile)**

**☛ See [Example: GAS score by patient](Observation-pcoGASScorePatientFollowupExample.html#root)**

**☛ See [Example: GAS score by a practitioner](Observation-pcoGASScorePractitionerFollowupExample.html#root)**

#### Track progress using using PROMs
Dorothy's mobile app prompts her to complete the GAD-7 anxiety assessment once each month and shares that Observation with the rest of her care team, where they all can track progress on attainment of Dorothy's PROM goal to achieve a GAD-7 score of less than 6.

**☛ See [Profile: PROM progress score](StructureDefinition-pco-prom-score-observation.html#profile)**

**☛ See [Example: PROM score by patient](Observation-pcoPROMScoreAnxietyExample.html#root)**

### Execute Digital Quality Measures (dQMs)

Coming Soon!