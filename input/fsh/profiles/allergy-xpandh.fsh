Profile: AllergyIntoleranceXpandh
Parent: $AllergyIntolerance-uv-ips
Id: AllergyIntolerance-xpandh
Title:    "Allergy Intolerance (EU PS)"
Description: """This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."
* code from EHDSIAllergyCode (extensible)
* patient only Reference(PatientXpandh)
* onset[x] only dateTime // is this needed ?
* reaction.substance from EHDSIAllergens  (extensible)
* reaction.manifestation from EHDSIReactionAllergy (extensible)
