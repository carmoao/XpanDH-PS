Profile: ConditionPsXpandh
Parent: $Condition-uv-ips
Id: Condition-ps-xpandh
Title:    "Condition (EU PS)"
Description: """This profile constrains the Condition resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the Condition resource for the purpose of the European patient summary."


* extension contains SupportingInformation named supportingInfo 0..*
* extension[supportingInfo] ^short = "Reference to additional information as Guidelines"

* extension contains $condition-participant-r5 named participantR5 0..1
* extension[participantR5].function
* extension[participantR5].actor


* code from EHDSIProblemCode (preferred)
* participant.actor
* severity from EHDSISeverity
* subject only Reference(PatientPsXpandh)
* onset[x] only dateTime // is this rule needed ?
* abatement[x] only dateTime // is this rule needed ?