Goal Attainment Scaling (GAS) in healthcare, measures the extent to which individuals achieve specific goals or objectives. It allows for the quantification and evaluation of progress toward individualized goals, particularly in areas where traditional outcome measures may be insufficient. GAS involves collaboratively setting goals with the individual and assigning numerical scales to each goal to represent different levels of achievement. This approach provides a more nuanced and tailored way to assess progress and outcomes, taking into account the unique circumstances and aspirations of the individual.

For goal attainment scaling, to achieve a goal, the patient must have achieved their *Realistic Goal (0)* or better \[*Better Than Expected (+1)* or *Much Better Than Expected(+2)*\] by their follow-up visit. A patient's goal with GAS might be defined as shown below. See example FHIR resources for an illustration of how goal extensions are used to represent GAS levels.

**Example Goal.description:** "Walk 15 minutes 2x/week for 3 months to improve mobility"

<table style="table-layout: fixed ; width:100%">
    <thead>
        <tr style="vertical-align: middle; background-color: #cccccc;">
            <th style="border: 1pt; border-style: solid; text-align: center; padding: 5pt;">Worse (-2)</th>
            <th style="border: 1pt; border-style: solid; text-align: center; padding: 5pt;">Current Status (-1)</th>
            <th style="border: 1pt; border-style: solid; text-align: center; padding: 5pt;">Realistic Goal (0)</th>
            <th style="border: 1pt; border-style: solid; text-align: center; padding: 5pt;">Better Than Expected (+1)</th>
            <th style="border: 1pt; border-style: solid; text-align: center; padding: 5pt;">Much Better Than Expected (+2)</th>
        </tr>
    </thead>
    <tbody style="width: 20%">
        <tr>
            <td style="border: 1pt; border-style: solid; padding: 5pt; background-color: #f4cccc;">Unable to walk once per week.</td>
            <td style="border: 1pt; border-style: solid; padding: 5pt; background-color: #f4cccc;">Walk 10 minutes 1x/week.</td>
            <td style="border: 1pt; border-style: solid; padding: 5pt; background-color: #d9ead3;">Walk 15 minutes 2x/week for the next 3 months.</td>
            <td style="border: 1pt; border-style: solid; padding: 5pt; background-color: #d9ead3;">Walk 15 minutes 3x/week for the next 3 months.</td>
            <td style="border: 1pt; border-style: solid; padding: 5pt; background-color: #d9ead3;">Walk 15 minutes 4x/week for the next 3 months.</td>
        </tr>
    </tbody>
</table>

### Mandatory and Must Support Data Elements

This Person-Centered GAS Goal Profile inherits shared definitions from the [PCO Goal Profile](StructureDefinition-pco-goal-profile.html); refer to it for scope and usage guidance. It sets minimum expectations for all person-centered Goal resources. Only added constraints are listed here.

**Each Goal must support:**

1. goal attainment scaling extensions
1. target measure code for 'Goal attainment scale'

**Profile Specific Implementation Guidance:**

* *Although the extensions and target measure are both marked as Must Support, the server system is not required to support both, but SHALL support at least one of these elements. A client application SHALL support both elements. These elements enable quality measures and other applications to determine that this Goal should have its progress and achievement tracked using GAS.