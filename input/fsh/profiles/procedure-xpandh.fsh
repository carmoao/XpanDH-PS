Profile: ProcedureXpandh
Parent: $Procedure-uv-ips
Id: Procedure-xpandh
Title:    "Procedure"
Description: """This profile constrains the Procedure resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the Procedure resource for the purpose of the European patient summary."
* code from EHDSIProblemCode (extensible)
* subject only Reference(PatientXpandh)
* performed[x] only dateTime or Period // is this needed ?

