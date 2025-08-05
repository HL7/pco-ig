library PCOCommon version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

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
      return [Condition] obs
        where obs.id = GA.reference.getId()
  )

// Returns a list of Observations that this Goal addresses.
define fluent function addressesObservations(goal Goal):
  flatten( goal.addresses GA
      return [Observation] obs
        where obs.id = GA.reference.getId()
  )

// Returns a list of Goals that address this Observation
define fluent function addressedByGoals(obs Observation):
  [Goal] goal
    where exists ( goal.addresses GA
        where obs.id = GA.reference.getId()
    )

// Returns a list of CarePlan that support this Goal.
define fluent function carePlans(goal Goal):
  [CarePlan] carePlan
    where exists ( carePlan.goal goalRef
        where goal.id = goalRef.reference.getId()
    )

define fluent function resolvePatients(references List<Reference>):
  flatten( references ref
    return [Patient] resource
      where resource.id = ref.reference.getId()
  )

define fluent function resolvePractitioners(references List<Reference>):
  flatten( references ref
    return [Practitioner] resource
      where resource.id = ref.reference.getId()
  )

define fluent function resolveRelatedPersons(references List<Reference>):
  flatten( references ref
    return [RelatedPerson] resource
      where resource.id = ref.reference.getId()
  )

define fluent function resolveGoals(references List<Reference>):
  flatten( references ref
    return [Goal] resource
      where resource.id = ref.reference.getId()
  )

define fluent function getId(uri String):
  Last(Split(uri, '/'))

/*
@description: Returns any extensions defined on the given resource with the specified url.
@comment: NOTE: Extensions are not the preferred approach, but are used as a way to access
content that is defined by extensions but not yet surfaced in the
CQL model info.
*/
define fluent function extensions(domainResource DomainResource, url String):
  domainResource.extension E
	  where E.url = url
		return E

/*
@description: Returns the single extension (if present) on the given resource with the specified url.
@comment: This function uses singleton from to ensure that a run-time exception is thrown if there
is more than one extension on the given resource with the specified url.
*/
define fluent function extension(domainResource DomainResource, url String):
  singleton from domainResource.extensions(url)
