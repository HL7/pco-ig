The Person-Centered Outcomes (PCO) HL7® FHIR® Implementation Guide (IG) supports the exchange of information related to a person's goal-directed care guided by a person-centered outcomes approach, which includes the identification and tracking of health outcome goals that matter most to patients using either Goal Attainment Scaling (GAS) or patient-reported outcome measures (PROM).

The PCO IG includes profiles for interoperable GAS Goals, support for GAS Goal editing tools, and PCO measures. GAS in healthcare, measures the extent to which individuals achieve specific goals or objectives. It allows for the quantification and evaluation of progress toward individualized goals, particularly in areas where traditional outcome measures may be insufficient. GAS involves collaboratively setting goals with the individual and assigning numerical scales to each goal to represent different levels of achievement. This approach provides a more nuanced and tailored way to assess progress and outcomes, taking into account the unique circumstances and aspirations of the individual. 

### Background

Everyone deserves fair and just access to high-quality health care that addresses their unique needs, reflects their diverse background and culture, and is designed to deliver the outcomes they want. This is particularly true for people with complex health care needs, many of whom are older adults who often receive care that may be misaligned with their needs and goals. Nearly 30% of Medicare beneficiaries have complex health care needs, and more than 14 million people in the U.S. need long-term services and supports. [These numbers are growing every year](https://www.aarp.org/content/dam/aarp/ppi/2019/08/long-term-services-and-supports.doi.10.26419-2Fppi.00079.001.pdf).

Goal-directed care in healthcare centers on setting and achieving specific, personalized goals that prioritize an individual's well-being and "What Matters Most" to each person. Rather than just treating symptoms, this approach involves close collaboration between patients, caregivers, and healthcare providers to identify individual goals related to health outcomes, functional improvement, or symptom management. Once goals are established, tailored care plans are developed, incorporating various treatments, therapies, and lifestyle adjustments to meet the individual's needs and preferences. Continual monitoring and adjustment ensure alignment with evolving priorities, fostering patient engagement and satisfaction while enhancing overall healthcare effectiveness.

[The Person-Centered Outcomes (PCO) approach](https://www.ncqa.org/wp-content/uploads/NCQA-Person-Centered-Outcomes-Approach-Toolkit_2024.pdf) focuses on setting and achieving specific, personalized, measurable goals that prioritize an individual's well-being and "What Matters Most" to each person. Rather than just treating symptoms, this approach involves close collaboration between patients, caregivers, and healthcare providers to identify individual goals related to health outcomes, functional improvement, or symptom management. After goals are established, tailored care plans are developed, incorporating various treatments, therapies, and lifestyle adjustments to meet the individual's needs and preferences. Continual monitoring and adjustment ensure alignment with evolving priorities, fostering patient engagement and satisfaction while enhancing overall healthcare effectiveness. Clinicians throughout the care continuum—from primary care to specialty care, to home and community-based services—can use this approach to identify what is important to a person (e.g., feeling well enough to visit grandchildren). This approach and its coordinating measures can help support and assess the quality of goal-directed care being implemented. 

The need for the PCO IG was identified as a natural next step from the scope of the [MCC eCare Plan FHIR IG STU1](http://hl7.org/fhir/us/mcc/ImplementationGuide/hl7.fhir.us.mcc) which provided high-level guidance for Goals and measuring outcomes. As goal-directed care is growing in use and being incorporated into payment programs, the need for data standards around implementation and reporting are necessary. This IG supports implementers, researchers, and evaluators of goal-directed care planning to improve health outcomes.

### User Stories

Several user storires are included in this guide that align with steps in the following process flow diagram. The stories are written to support user-centered design of systems from the point-of-view of patients, health coaches, and clinicians.

* **[PCO User Stories](user_stories.html)**

### Person-Centered Outcomes Process Flow

<table style="table-layout: fixed ; width:100%">
    <tbody style="width: 50% ; padding: 20px">
        <tr>
            <td colspan="2"><img width="100%" src="./PCO_GAS_Flow Diagram.png" alt="PCO GAS Flow Diagram"/></td>
        </tr>
        <tr>
            <td><img width="100%" src="./Create_Care_Plan.png" alt="Create Care Plan"/></td>
            <td><img width="100%" src="./Track_PCO_Goal.png" alt="Track PCO Goal"/></td>
        </tr>
    </tbody>
</table>

#### PCO IG FHIR Profiles aligned with the process flow
* [What Matters Assesssment](StructureDefinition-pco-what-matters-assessment.html)
* [Person-Centered Goal](StructureDefinition-pco-goal-profile.html) (inherited definition for all PCO goals)
  * [GAS Goal](StructureDefinition-pco-gas-goal-profile.html)
  * [PROM Goal](StructureDefinition-pco-prom-goal-profile.html)
* Goal Assessment
  * [Readiness](StructureDefinition-pco-readiness-assessment.html)
  * [Barriers](StructureDefinition-pco-goal-barrier.html)
* [Person-Centered Care Plan](StructureDefinition-pco-care-plan.html)
* Outcome observations
  * [Goal Attainment Scaling (GAS) score observation](StructureDefinition-pco-gas-score-observation.html)
  * [Patient-Reported Outcome Measure (PROM) score observation](StructureDefinition-pco-prom-score-observation.html)

#### Terminology support
* [Goal Domains](ValueSet-pco-goal-domain-categories.html)
* Goal Attainment Scaling (GAS)
  * [GAS Score type](ValueSet-goal-attainment-scaling-score.html)
  * [Follow-up GAS Score Answers](http://loinc.org/vs/LL6900-6)
* [PROM Target Measure Scores](ValueSet-prom-target-measures.html)

### How to read this Guide

This IG is divided into several sections that are listed at the top of each page in the menu bar.
- [Home](index.html): The home page provides the introduction and background information to set context for the use of the HL7® FHIR Person-Centered Outcomes IG.
- Guidance: These pages provide overall guidance in using the profiles defined in this guide.
    - [User Stories](user_stories.html): Brief scenarios from the perspective of individuals using applications based on this IG.
    - [Related FHIR IGs](related-fhir-igs.html): HL7 FHIR Implementation Guides (IGs) that support other aspects of person-centered, goal-directed care planning.
- Conformace: These pages provide overall guidance in using the profiles and transactions defined in this guide.
    - [Formal Specification](formal_specification.html): Information about conformance to the IG, including Must Support requirements.
    - [Underlying Technologies](underlying_technologies.html): Information about the terminologies, notations, and design principles, specific to FHIR, 
- FHIR Artifacts: These sections provide detailed descriptions and formal definitions for FHIR artifacts defined in this IG that define conformance criteria.
    <!-- - [Capability Statement](CapabilityStatement-pco-cap.html): This artifact defines the specific capabilities that different types of systems are expected to have in order to comply with this IG. Systems conforming to this IG are expected to declare conformance with this capability statement. -->
    - [Profiles](artifacts.html#structures-resource-profiles): This section lists the set of Profiles defined in this IG to exchange person-centered information. Each linked Profile page includes a narrative introduction and a formal definition.
    - [Extensions](artifacts.html#structures-extension-definitions): This section lists the set of Extensions defined in and used by the Profiles in this IG. Each linked Extension page includes a formal definition.
    - [Value Sets](artifacts.html#terminology-value-sets): This section lists the value sets this IG defines.
    - [Code Systems](artifacts.html#terminology-code-systems): This section lists the code systems this IG defines.
- Examples: These sections provide definitions for FHIR resources that are informative for IG implementers, but are not required for conformance testing with this IG.
    - [Example Instances](artifacts.html#example-example-instances): This section lists user story example instances associated with this IG.
    - [Questionnaires](artifacts.html#structures-questionnaires): This section lists FHIR Questionnaire resources used in example instances of PCO assessments.
    - [Measures](artifacts.html#knowledge-artifacts-measure): This section lists example FHIR Measure resources for digial quality measures.
    - [CQL Libraries](artifacts.html#knowledge-artifacts-libraries): This section lists example FHIR Library resources containing CQL logic for digial quality measures.
- [Downloads](downloads.html): This page provides links to downloadable artifacts.

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}
 