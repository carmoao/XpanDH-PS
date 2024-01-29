Profile: PatientPsXpandh
// Parent: http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab
Parent: PatientXpandh
Id: Patient-ps-xpandh
Title: "Patient (EU PS)"
Description: "This profile defines how to represent Patient in FHIR for the purpose of this guide"

* insert ImposeProfile($Patient-uv-ips, 0)
// * insert ImposeProfile($Patient-uv-ips, 1)

* identifier
* name only $HumanName-eu
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
* name.text
* name.family 1..1
* name.given 1..
* telecom ^short = "A contact detail for the patient"
* gender
* birthDate 1..
* address only $Address-eu
* address.country.extension[countryCode].valueCoding from EHDSICountry
// * address obeys pat-cnt-2or3-char
/* -- CHECK IF THIS  HAS TO BE RECOVERED FOR ALIGN WITH THE IPS PROFILE 
* contact.relationship only $CodeableConcept-uv-ips
* generalPractitioner MS 
*/


