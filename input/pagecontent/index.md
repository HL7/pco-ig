The Person-Centered Outcomes (PCO) HL7® FHIR® Implementation Guide (IG) supports the exchange of information related to a person's goal-directed care guided by a person-centered outcomes approach, which includes the identification and tracking of health outcome goals that matter most to patients using either Goal Attainment Scaling (GAS) or patient-reported outcome measures (PROM).

The PCO IG includes profiles for interoperable GAS Goals, support for GAS Goal editing tools, and PCO measures. GAS in healthcare, measures the extent to which individuals achieve specific goals or objectives. It allows for the quantification and evaluation of progress toward individualized goals, particularly in areas where traditional outcome measures may be insufficient. GAS involves collaboratively setting goals with the individual and assigning numerical scales to each goal to represent different levels of achievement. This approach provides a more nuanced and tailored way to assess progress and outcomes, taking into account the unique circumstances and aspirations of the individual. 

### Background

Everyone deserves fair and just access to high-quality health care that addresses their unique needs, reflects their diverse background and culture, and is designed to deliver the outcomes they want. This is particularly true for people with complex health care needs, many of whom are older adults who often receive care that may be misaligned with their needs and goals. Nearly 30% of Medicare beneficiaries have complex health care needs, and more than 14 million people in the U.S. need long-term services and supports. [These numbers are growing every year](https://www.aarp.org/content/dam/aarp/ppi/2019/08/long-term-services-and-supports.doi.10.26419-2Fppi.00079.001.pdf).

Goal-directed care in healthcare centers on setting and achieving specific, personalized goals that prioritize an individual's well-being and "What Matters Most" to each person. Rather than just treating symptoms, this approach involves close collaboration between patients, caregivers, and healthcare providers to identify individual goals related to health outcomes, functional improvement, or symptom management. Once goals are established, tailored care plans are developed, incorporating various treatments, therapies, and lifestyle adjustments to meet the individual's needs and preferences. Continual monitoring and adjustment ensure alignment with evolving priorities, fostering patient engagement and satisfaction while enhancing overall healthcare effectiveness.

[The Person-Centered Outcomes (PCO) approach](https://www.ncqa.org/wp-content/uploads/NCQA-Person-Centered-Outcomes-Approach-Toolkit_2024.pdf) focuses on setting and achieving specific, personalized, measurable goals that prioritize an individual's well-being and "What Matters Most" to each person. Rather than just treating symptoms, this approach involves close collaboration between patients, caregivers, and healthcare providers to identify individual goals related to health outcomes, functional improvement, or symptom management. After goals are established, tailored care plans are developed, incorporating various treatments, therapies, and lifestyle adjustments to meet the individual's needs and preferences. Continual monitoring and adjustment ensure alignment with evolving priorities, fostering patient engagement and satisfaction while enhancing overall healthcare effectiveness. Clinicians throughout the care continuum—from primary care to specialty care, to home and community-based services—can use this approach to identify what is important to a person (e.g., feeling well enough to visit grandchildren). This approach and its coordinating measures can help support and assess the quality of goal-directed care being implemented. 

The need for the PCO IG was identified as a natural next step from the scope of the [MCC eCare Plan FHIR IG STU1](http://hl7.org/fhir/us/mcc/ImplementationGuide/hl7.fhir.us.mcc) which provided high-level guidance for Goals and measuring outcomes. As goal-directed care is growing in use and being incorporated into payment programs, the need for data standards around implementation and reporting are necessary. This IG supports implementers, researchers, and evaluators of goal-directed care planning to improve health outcomes.

### Relationship with other FHIR IGs

The PCO IG is complementary in scope to the following related care planning IGs:

[MCC eCare Plan IG](http://hl7.org/fhir/us/mcc/ImplementationGuide/hl7.fhir.us.mcc): The scope of the PCO IG is distinct from MCC IG in that it goes into more detail on the use of FHIR resources to support Goal Outcomes and Progress.

[eLTSS FHIR IG](http://hl7.org/fhir/us/eltss/ImplementationGuide/hl7.fhir.us.eltss): The eLTSS IG focuses on being able to package eLTSS data in a CarePlan. PCO IG will go into further detail on setting Goal targets using PROM or GAS measures. 

[PACIO Personal Functioning and Engagement (PFE) IG](https://build.fhir.org/ig/HL7/fhir-pacio-pfe/): The PFE IG defines how to exchange data related to an individual’s functioning and engagement in daily life, primarily in the context of post-acute and long-term care. The PCO IG focuses on defining the use of Observation profiles in the context of goal-directed care planning.

[SDOH CC IG](https://hl7.org/fhir/us/sdoh-clinicalcare/STU2.2/): The SDOH CC IG focuses on representing goals to address an identified social risk or need. The PCO IG will be complementary to this since a goal that matters most to a person may fall in an SDOH domain and PCO goals can make use of Gravity terminologies and profile relationships described by the SDOH CC IG, and PCO IG profiles can be applied to enhance progress tracking for SDOH social need goals by using Goal Attainment Scaling.

[US Behavioral Health Profiles Implementation Guide](https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/): This IG is designed to facilitate behavioral health integration with other healthcare services, support better clinical decision-making, and improve patient outcomes. The PCO IG will be complementary to this IG because a behavioral health goal can make use of PCO IG profiles and Goal Attainment Scaling (GAS) Goal extensions to enhance progress tracking and quality measures.

### Conformance vs Example Content

* Profile and extension definitions in this IG are proposed as **conformance** content.
* Measure, Library, and Questionnaire resources are **example** instances that illustrate concrete use cases for implementers.

### How to read this Guide

This IG is divided into several sections that are listed at the top of each page in the menu bar.
- [Home](index.html): The home page provides the introduction and background information to set context for the use of the HL7® FHIR Person-Centered Outcomes IG.
- Guidance: These pages provide overall guidance in using the profiles and transactions defined in this guide.
    - [Formal Specification](formal_specification.html): Information about conformance to the IG, including Must Support requirements.
    - [Use Cases](use_cases.html): Detailed scenarios in which the Person-Centered Outcomes IG could be used.
    - [User Stories](user_stories.html): Brief scenarios from the perspective of individuals using applications based on this IG.
    - [Underlying Technologies](underlying_technologies.html): Information about the terminologies, notations, and design principles, specific to FHIR, that this specification uses.
- Conformance: These sections provide detailed descriptions and formal definitions for FHIR artifacts defined in this IG that define conformance criteria.
    <!-- - [Capability Statement](CapabilityStatement-pco-cap.html): This artifact defines the specific capabilities that different types of systems are expected to have in order to comply with this IG. Systems conforming to this IG are expected to declare conformance with this capability statement. -->
    - [Profiles](artifacts.html#structures-resource-profiles): This section lists the set of Profiles defined in this IG to exchange person-centered information. Each linked Profile page includes a narrative introduction and a formal definition.
    - [Extensions](artifacts.html#structures-extension-definitions): This section lists the set of Extensions defined in and used by the Profiles in this IG . Each linked Extension page includes a formal definition.
    - [Value Sets](artifacts.html#terminology-value-sets): This section lists the value sets this IG defines.
    - [Code Systems](artifacts.html#terminology-code-systems): This section lists the code systems this IG defines.
- Examples: These sections provide definitions for FHIR resources that are informative for IG implementers, but are not required for conformance testing with this IG.
    - [Measures](artifacts.html#knowledge-artifacts-measure): This section lists example FHIR Measure resources for digial quality measures.
    - [CQL Libraries](artifacts.html#knowledge-artifacts-libraries): This section lists example FHIR Library resources containing CQL logic for digial quality measures.
    - [Questionnaires](artifacts.html#structures-questionnaires): This section lists FHIR Questionnaire resources used in example instances of PCO goals.
    - [Example Instances](artifacts.html#example-example-instances): This section lists other example instances associated with this IG.
- [Downloads](downloads.html): This page provides links to downloadable artifacts.
