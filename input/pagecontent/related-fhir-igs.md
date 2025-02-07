
The Person-Centered Outcomes (PCO) IG is complementary and may be used in combination with several other HL7 FHIR Implementation Guides (IGs). The following HL7 FHIR IGs are listed with a brief summary about this PCO IG is related to their scope and usage.


US Core 6.1.0

US Core 7.0.0

[MCC eCare Plan IG](http://hl7.org/fhir/us/mcc/ImplementationGuide/hl7.fhir.us.mcc): The scope of the PCO IG is distinct from MCC IG in that it goes into more detail on the use of FHIR resources to support Goal Outcomes and Progress, including optional use of Goal Attainment Scaling (GAS).

[eLTSS FHIR IG](http://hl7.org/fhir/us/eltss/ImplementationGuide/hl7.fhir.us.eltss): The eLTSS IG focuses on being able to package eLTSS data in a CarePlan. PCO IG will go into further detail on setting Goal targets using PROM or GAS measures. 

[PACIO Personal Functioning and Engagement (PFE) IG](https://build.fhir.org/ig/HL7/fhir-pacio-pfe/): The PFE IG defines how to exchange data related to an individual’s functioning and engagement in daily life, primarily in the context of post-acute and long-term care. The PCO IG focuses on defining the use of Observation profiles in the context of goal-directed care planning.

PACIO ADI

[SDOH CC IG](https://hl7.org/fhir/us/sdoh-clinicalcare/STU2.2/): The SDOH CC IG focuses on representing goals to address an identified social risk or need. The PCO IG will be complementary to this since a goal that matters most to a person may fall in an SDOH domain and PCO goals can make use of Gravity terminologies and profile relationships described by the SDOH CC IG, and PCO IG profiles can be applied to enhance progress tracking for SDOH social need goals by using Goal Attainment Scaling.

[US Behavioral Health Profiles Implementation Guide](https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/): This IG is designed to facilitate behavioral health integration with other healthcare services, support better clinical decision-making, and improve patient outcomes. The PCO IG will be complementary to this IG because a behavioral health goal can make use of PCO IG profiles and Goal Attainment Scaling (GAS) Goal extensions to enhance progress tracking and quality measures.