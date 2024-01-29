Profile: ConditionXpandh
Parent: $Condition-uv-ips
Id: Condition-xpandh
Title:    "Condition (EU PS)"
Description: """This profile constrains the Condition resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the Condition resource for the purpose of the European patient summary."
* code from EHDSIProblemCode (extensible)
* severity from EHDSISeverity
* subject only Reference(PatientXpandh)
* onset[x] only dateTime // is this needed ?

