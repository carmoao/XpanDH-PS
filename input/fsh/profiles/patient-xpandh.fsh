Profile: PatientPsXpandh
// Parent: http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab
Parent: Patient
Id: Patient-ps-xpandh
Title: "Patient (EU PS)"
Description: "This profile defines how to represent Patient in FHIR for the purpose of this guide"

* insert ImposeProfile($Patient-uv-ips, 0)
// * insert ImposeProfile($Patient-uv-ips, 1)


* identifier ^short = "Patient identifiers" // MS according to IPS

* name 1..* // MS according to IPS
* name only $HumanName-eu
* name obeys eu-pat-1
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.text // // MS according to IPS
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
// based 2023-09-01 decision
// * name.family 1..1
* name.family ^short = "Family name"  // MS according to IPS
* name.family ^definition = """Family name. When more the family is composed by more than one names, this element documents the full composed family name with the proper * name.familyrder. The parts are recorded in the fhater and mother family names extensions."""
* name.family ^example.label = "spanish"
* name.family ^example.valueString = "Valero Iglesias"
* name.given ^short = "Given names. Includes middle names" // MS according to IPS
* name.text ^short = "Text representation of the full name."
* telecom ^short = "A contact detail for the patient" // MS according to IPS
* gender ^short = "Administrative Gender" // MS according to IPS
* birthDate 1.. // MS according to IPS
// * address MS
* address only $Address-eu // MS according to IPS
* address.country.extension[countryCode].valueCoding from EHDSICountry
* contact.relationship only $CodeableConcept-uv-ips
* contact.relationship ^short = "Relationship between a patient and a contact person for that patient"
* contact.address only $Address-eu
* generalPractitioner ^short = "Patient's nominated care provider" // MS according to IPS


Invariant: eu-pat-1
Description: "given, family, text or a data-absent-reason extension SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists() or extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
/* XPath: "f:given or f:family or f:text" */


