Profile: MedicationStatementPsXpandh
Parent: $MedicationStatement-uv-ips
Id: MedicationStatement-ps-xpandh
Title:    "Medication Statement (EU PS)"
Description: """This profile constrains the MedicationStatement resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the MedicationStatement resource for the purpose of the European patient summary."
/* * extension contains $medicationStatement-dosage-r5 named dosage 0..*
* extension[dosage].extension[route].valueCodeableConcept from EHDSIRouteofAdministration (preferred)
 */
* medicationReference 1..
* medicationReference only Reference ( MedicationPsXpandh )
* subject only Reference (PatientPsXpandh)
* reasonCode from EHDSICondition (preferred)
* reasonReference only Reference(ConditionPsXpandh or Observation or DiagnosticReport) // Only for HDR ?
* dosage.route from EHDSIRouteofAdministration (preferred)

//------
* dosage ^short =  	"How medication is/was taken or should be taken"
// to be further developped

Profile: MedicationPsXpandh
Parent: $Medication-uv-ips
Id: Medication-ps-xpandh
Title:    "Medication (EU PS)"
Description: """This profile constrains the Medication resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the Medication resource for the purpose of the European patient summary."
* code from EHDSIActiveIngredient (preferred)
* code ^short = "Any kind of product code (including ATC)"
// ADD ADDITIONAL VALUE SET
* ingredient
  * itemCodeableConcept from EHDSISubstance (preferred)
  * itemReference only Reference (MedicationPsXpandh)
  * isActive ^short = "Usually true"
  * strength ^short = "A kind of strength"
  * strength ^definition = """A kind of strength.
  Definitional resources should be used for specifying the different types of strengths: presentation; concentration;.."""
* form from EHDSIDoseForm
// add R5 extension fot MedKnowledge