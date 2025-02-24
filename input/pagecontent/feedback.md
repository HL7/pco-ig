
This is a draft FHIR IG based on investigation and testing at two HL7 FHIR Connectathons.
* [Goal-Directed Care Planning, May 2024](https://confluence.hl7.org/display/FHIR/2024+-+05+Goal-Directed+Care+Planning)
* [Goal-Directed Care Planning, September 2024](https://confluence.hl7.org/display/FHIR/2024+-+09+Goal-Directed+Care+Planning)

We plan to submit a proposal to HL7 workgroup(s) for migrating this work into an HL7 published FHIR IG.  Until then, please add an Issue on the [GitHub repository](https://github.com/mtnlotus/pco-ig/issues) or send feedback to Dave Carlson at [dave@mtnlotus.com](mailto:dave@mtnlotus.com).

### User Stories

Any feedback on [User Stories](user_stories.html) or suggestions for additional stories?

### Profiles

Questions for FHIR Connectathon participants on distinctions needed to select data for the quality measures shown below.

1. **How do we determine that a person has "a complex care need?"**

2. **How do we distiguish a "PCO Goal" from other kinds of FHIR Goals?**
   * Require a category from [PCO Goal Domain Categories](ValueSet-pco-goal-domain-categories.html) value set defined by this IG?
   * Or, check for Goal.addresses relationship with a [What Matters Assessment](StructureDefinition-pco-what-matters-assessment.html#profile) observation?
   * Or, check that a Goal satisfies either the GAS Goal or PROM Goal criteria listed below?
  
3. **How do we distinguish a Goal with GAS from a Goal with PROM as measurement?**
   * [GAS Goal](StructureDefinition-pco-gas-goal-profile.html)
     * Require 5 [GAS extensions](StructureDefinition-pco-goal-attainment-scaling.html) on each Goal?
     * Or, require Goal.target.measure = "Goal attainment scale" LOINC code?
   * [PROM Goal](StructureDefinition-pco-prom-goal-profile.html)
     * Require Goal.target.measure from a value set of [PROM score LOINC codes](ValueSet-prom-target-measures.html)?

4. **How do we associate a PCO Goal with its progress score observations?**
   * Require an Observation.focus relationship to a PCO Goal?
   * Or, require that the Observation.code SHALL equal the Goal.target.measure?  Which would require that both GAS and PROM goals include a target measure code.

### NCQA Measures

#### Measure 1: Goal Identification
% of individuals 18 years of age and older with a complex care need 
who had a PCO goal identified 
resulting in completion of goal attainment scaling (GAS) or a Patient-Reported Outcome Measure (PROM) 
and development of an action plan.

#### Measure 2: Goal Follow-up
% of individuals 18 years of age or older with a complex care need 
who received follow-up on their PCO goal within two weeks to six months of when the PCO goal and GAS or PROM were identified.

#### Measure 3: Goal Achievement
% of individuals 18 years of age or older with a complex care need 
who achieved their PCO goal within two weeks to six months of when the PCO goal and GAS or PROM were identified.
