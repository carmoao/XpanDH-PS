Profile: AllergyIntoleranceXpandh
Parent: $AllergyIntolerance-uv-ips
Id: AllergyIntolerance-ps-eu-xpandh
Title:    "Allergy Intolerance (EU PS)"
Description: """This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."
* extension[abatement-datetime] ^short = "End date"
* clinicalStatus ^short = "Current allergy or Intolerance status"
* type ^short = "Type of propensity"
* code from EHDSIAllergyCode (extensible)
* verificationStatus ^short = "Certainty"
* criticality ^short = "Criticality"
* patient only Reference(PatientPsXpandh)
// * onset[x] only dateTime // is this needed ?
* onsetDateTime ^short = "Onset date"
* reaction.substance from EHDSIAllergens  (extensible)
* reaction.manifestation from EHDSIReactionAllergy (extensible)
* reaction.severity ^short = "Severity"

