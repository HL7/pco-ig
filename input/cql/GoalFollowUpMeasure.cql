/*
@description: Measure 2 - Goal Follow-up: % of individuals 18 years of age or older with
a complex care need who received follow-up on their PCO goal within two
weeks to six months of when the PCO goal and GAS or PROM were
identified.

@author: Mountain Lotus WellBeing LLC
*/
library GoalFollowUpMeasure version '0.1.0'

using FHIR version '4.0.1'

include hl7.fhir.uv.cql.FHIRCommon version '2.0.0'
include hl7.fhir.uv.cql.FHIRHelpers version '4.0.1'
include PCOCommon version '0.1.0' called PC
include GoalAttainmentLogic version '0.1.0' called PCOLogic

parameter "Measurement Period" Interval<DateTime>
    default Interval[@2024-01-01T00:00:00.000Z, @2024-12-31T23:59:59.999Z]

parameter "Follow-Up Interval" Interval<System.Quantity>
  default Interval[2 weeks, 26 weeks]

context Patient

/*
@description: Includes individuals 18 years of age and older.
*/
define "Initial Population": {
  Patient person
    where AgeInYearsAt(start of "Measurement Period") >= 18
}

/*
@description: Initial Population individuals with a complex care need and has a PCO Goal.
@comment: TODO - How do we determine "complex care need?"
*/
define "Denominator":
  "Initial Population"

define "Denominator Exclusions":
  null

define "Denominator Exceptions":
  null

/*
@description: Indivuals who received follow-up on their PCO goal within two
weeks to six months of when the PCO goal and GAS or PROM were identified.
*/
define "Numerator":
  "Denominator" person
    where exists PCOLogic."Follow-Up Scores During Measurement Period"
