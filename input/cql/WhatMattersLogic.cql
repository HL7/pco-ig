library WhatMattersLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include PCOCommon version '0.1.0' called PC

codesystem "Well-Being Concepts": 'http://hl7.org/fhir/us/pco/CodeSystem/pco-concepts-temporary'
valueset "Well-Being Categories": 'http://hl7.org/fhir/us/pco/ValueSet/pco-categories'
valueset "Well-Being Domains": 'http://hl7.org/fhir/us/pco/ValueSet/wellbeing-domains-example'

code "What Matters category": 'what-matters' from "Well-Being Concepts" display 'What Matters'

parameter "Measurement Period" Interval<DateTime>
    default Interval[@2024-01-01T00:00:00.000Z, @2024-12-31T23:59:59.999Z]

parameter "Follow-Up Interval" Interval<System.Quantity>
  default Interval[2 weeks, 26 weeks]

context Patient

define "Well-Being Observations":
  [Observation] obs
    where obs.category in "Well-Being Categories"
      or obs.code in "Well-Being Domains"

// Returns a list of what matters Observations this Goal addresses.
define fluent function whatMattersObservations(goal Goal):
  flatten( goal.addresses GA
      return [Observation] obs
        where GA.references(obs.id)
          and obs.isWhatMatters()
  )

define fluent function isWhatMatters(obs Observation):
  exists( "Well-Being Observations" obs
    where exists(obs.category cat where cat = "What Matters category")
  )
