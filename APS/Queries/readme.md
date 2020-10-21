### Requirement queries
These queries are built to answer requirements connected to the D10 and D2A0 certificates. The queries are fetching requirement information from the D10 and D2A0 node shape and retrieving labels from the APS-ontology when necessary. 

* `constructRequirements.rq` contains a `CONSTRUCT` query constructing a graph containing all requirements connected to D1. This query has crazy loooong response time and should not be used in production. Only uploaded as a reference.
* `requiredAge.rq` returns description of the age requirement.
* `requiredCertifices.rq` returns URI and description of all mandatory certificates.
* `requiredCertificatesForFirstSGSAlternative.rq` returns URI and description of certificates required for the first seagoing service alternative. Only one of these is mandatory.
* `requiredCertificatesForFirstSGSAlternativeSecondList.rq` returns URI and description of certificates required for the first seagoing service alternative (the second list of certificates). Only one of these is mandatory.
* `requiredCertificatesForSecondSGSAlternative.rq` returns URI and description of certificates required for the second seagoing service alternative. Only one of these is mandatory.
* `requiredCommonCourses.rq` returns URI and description of all mandatory courses.
* `requiredCourseOptions.rq` returns URI and description of a list of courses, where at least one is mandatory.
* `requiredEducation.rq` returns description of required education.
* `requiredSGSFirstAlternative.rq` returns description of first seagoing service alternative.
* `requiredSGSSecondAlternative.rq` returns description of second seagoing service alternative.
