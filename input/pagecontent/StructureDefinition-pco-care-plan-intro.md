This profile defines only a few constraints for required elements that are needed to support digital quality measures for person-centered outcomes. This PCO FHIR IG does not specify the kinds of care plan activities that may be included for treatment, nor patient preferences regarding those treatments. Care plan activities and interventions may be extensive for patients with complex care needs. For person-centered outcome quality measures, it is only required that a care plan exists for a person-centered goal to support its achievement.

This Person-Centered Care Plan profile may be applied in combination with more extensive care plan profiles from other FHIR IGs, e.g. for chronic disease management or advance care plans. A FHIR CarePlan resource may satisfy profile requirements from more than one FHIR IG.

### Mandatory and Must Support Data Elements

This Person-Centered Care Plan Profile inherits from the [US Core Care Plan Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-careplan.html); refer to it for scope and usage guidance. It sets minimum expectations for all person-centered CarePlan resources.

**Each Person-Centered Care Plan must have:**

1. required elements from [US Core Care Plan Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-careplan.html)
1. a Person-Centered Goal, either GAS or PROM goal
1. at least one activity
