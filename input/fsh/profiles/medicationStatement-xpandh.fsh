Profile: MedicationStatementXpandh
Parent: $MedicationStatement-uv-ips
Id: MedicationStatement-xpandh
Title:    "Medication Statement"
Description: """This profile constrains the MedicationStatement resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the MedicationStatement resource for the purpose of the European patient summary."
* medicationReference 1..
* medicationReference only Reference ( MedicationXpandh )
* subject only Reference (PatientXpandh)
* reasonCode from EHDSICondition (extensible)
* reasonReference only Reference(ConditionXpandh or Observation or DiagnosticReport) // Only for HDR ?

//------
* dosage ^short =  	"How medication is/was taken or should be taken"
// to be further developped

Profile: MedicationXpandh
Parent: $Medication-uv-ips
Id: Medication-xpandh
Title:    "Medication (EU PS)"
Description: """This profile constrains the Medication resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the Medication resource for the purpose of the European patient summary."
* code from EHDSIActiveIngredient (preferred)
* code ^short = "Any kind of product code (including ATC)"
// ADD ADDITIONAL VALUE SET
* ingredient
  * itemCodeableConcept from EHDSISubstance (preferred)
  * itemReference only Reference (MedicationXpandh)
  * isActive ^short = "Usually true"
  * strength ^short = "A kind of strength"
  * strength ^definition = """A kind of strength.
  Definitional resources should be used for specifying the different types of strengths: presentation; concentration;.."""
* form from EHDSIDoseForm
// add R5 extension fot MedKnowledge