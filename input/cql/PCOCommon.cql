library PCOCommon version '0.1.0'

using FHIR version '4.0.1'

include hl7.fhir.uv.cql.FHIRCommon version '2.0.0'
include hl7.fhir.uv.cql.FHIRHelpers version '4.0.1'

parameter "Measurement Period" Interval<DateTime>

context Patient

define function SortAscending(observations List<Observation>):
  observations O
    sort by Coalesce(
      (effective as FHIR.dateTime).value,
      (effective as FHIR.instant).value,
      (effective as FHIR.Period)."end".value,
      (effective as FHIR.Period)."start".value) ascending

// Returns Date from the first Goal target that has a due date.
define fluent function dueDate(goal Goal):
  First(goal.target target
    // TODO if due is Duration, add that quantity to startDate
      let due:(target.due as FHIR.date).value
      where due is not null
      return due
  )

// Returns a list of Conditions that this Goal addresses.
define fluent function addressesConditions(goal Goal):
  flatten( goal.addresses GA
      return [Condition] cond
        where GA.references(cond.id)
  )

// Returns a list of Observations that this Goal addresses.
define fluent function addressesObservations(goal Goal):
  flatten( goal.addresses GA
      return [Observation] obs
        where GA.references(obs.id)
  )

// Returns a list of Goals that address this Observation
define fluent function addressedByGoals(obs Observation):
  [Goal] goal
    where exists ( goal.addresses GA
        where GA.references(obs.id)
    )

// Returns a list of CarePlan that support this Goal.
define fluent function carePlans(goal Goal):
  [CarePlan] carePlan
    where exists ( carePlan.goal goalRef
        where goalRef.references(goal.id)
    )

/**
Use this function to resolve Patient resource from a list of references, e.g. from Goal.expressedBy or Observation.performer
Returns null if a Patient resource is not included in the reference list.
*/
define fluent function resolvePatients(references List<Reference>):
  flatten( references ref
    return [Patient] resource
        where ref.references(resource.id)
  )

/**
Use this function to resolve Pracitioner resource from a list of references, e.g. from Goal.expressedBy or Observation.performer
Returns null if a Pracitioner resource is not included in the reference list.
*/
define fluent function resolvePractitioners(references List<Reference>):
  flatten( references ref
    return [Practitioner] resource
        where ref.references(resource.id)
  )

/**
Use this function to resolve RelatedPerson resource from a list of references, e.g. from Goal.expressedBy or Observation.performer
Returns null if a RelatedPerson resource is not included in the reference list.
*/
define fluent function resolveRelatedPersons(references List<Reference>):
  flatten( references ref
    return [RelatedPerson] resource
        where ref.references(resource.id)
  )

/**
Use this function to resolve Goal resource from a list of references, e.g. from CarePlan.goal
Returns null if a Goal resource is not included in the reference list.
*/
define fluent function resolveGoals(references List<Reference>):
  flatten( references ref
    return [Goal] resource
        where ref.references(resource.id)
  )
