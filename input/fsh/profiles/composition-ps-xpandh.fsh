Profile: CompositionPsXpandh
Parent: $Composition-uv-ips
Id: Composition-ps-eu-xpandh
Title: "Composition: Patient Summary"
Description: "Clinical document used to represent a Patient Summary (HDR) for the scope of the XpanDH project."
* ^publisher = "XpanDH Project"
* ^copyright = "XpanDH Project"
* . ^short = "Patient Summary composition"
* . ^definition = "Patient Summary composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

/* 
* extension contains $composition-basedOn-order-or-requisition named basedOn-order-or-requisition 0..*
* extension[basedOn-order-or-requisition]
* extension[basedOn-order-or-requisition].valueReference only Reference ( ServiceRequestHdrXpandh )

* extension contains $information-recipient named information-recipient 0..*
* extension[information-recipient]
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[0].path = "valueReference.resolve()"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^short = "Sliced per type of recipient"
  * ^definition = "Sliced per type of recipient"
* extension[information-recipient] contains practictionerRole 0..*
* extension[information-recipient][practictionerRole].valueReference only Reference ( PractitionerRoleXpandh ) */

/* * extension contains $composition-clinicaldocument-versionNumber named versionNumber 0..* */
* extension[composition-clinicaldocument-versionNumber]



* identifier ^short = "HDR business identifier"
* status ^short = "HDR status"
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Patient Summary\")"
* type ^definition = "Specifies that this composition refer to a Patient Summary"
// * type = http://loinc.org#34105-7  
* subject only Reference(PatientXpandh)
* subject 1..1
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the hdr the subject is always the patient."
* encounter only Reference ( EncounterXpandh )
* date ^short = "HDR date"
* author ^short = "Who and/or what authored the Patient Summary"
* author ^definition = "Identifies who is responsible for the information in the Patient Summary, not necessarily who typed it in."
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[0].path = "valueReference.resolve()"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^short = "Sliced per type of author"
  * ^definition = "Sliced per type of author"
* author contains practictionerRole 0..*
* author[practictionerRole] only Reference ( PractitionerRoleXpandh )

* title ^short = "Patient Summary"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Patient Summary\" or any equivalent translation"
* attester.mode ^short = "The type of attestation"
* attester.time ^short = "When the composition was attested"
* attester.party ^short = "Who attested the composition"

/* * section 1..
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the Patient Summary"
* section ^definition = "The root of the sections that make up the Patient Summary composition." */

* section[sectionMedications].entry[medicationStatement] only Reference (MedicationStatementXpandh)
* section[sectionAllergies].entry[allergyOrIntolerance] only Reference (AllergyIntoleranceXpandh)
* section[sectionProblems].entry[problem] only Reference (ConditionXpandh)
* section[sectionProceduresHx] 1..1
* section[sectionProceduresHx].entry[procedure] only Reference (ProcedureXpandh)
* section[sectionImmunizations].entry[immunization] only Reference (ImmunizationXpandh)
* section[sectionMedicalDevices] 1..1
* section[sectionMedicalDevices].entry[deviceStatement] only Reference (DeviceUseStatementXpandh)

