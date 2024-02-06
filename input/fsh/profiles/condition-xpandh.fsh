Profile: ConditionPsXpandh
Parent: $Condition-uv-ips
Id: Condition-ps-xpandh
Title:    "Condition (EU PS)"
Description: """This profile constrains the Condition resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the Condition resource for the purpose of the European patient summary."
* code from EHDSIProblemCode (extensible)
* severity from EHDSISeverity
* subject only Reference(PatientPsXpandh)
* onset[x] only dateTime // is this rule needed ?
* abatement[x] only dateTime // is this rule needed ?