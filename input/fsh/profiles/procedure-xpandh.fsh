Profile: ProcedurePsXpandh
Parent: $Procedure-uv-ips
Id: Procedure-ps-xpandh
Title:    "Procedure (EU PS)"
Description: """This profile constrains the Procedure resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the Procedure resource for the purpose of the European patient summary."				
* code from EHDSIProcedure (preferred)
* subject only Reference(PatientPsXpandh)
* performed[x] only dateTime or Period // is this needed ?
* bodySite from eHDSIBodySite (preferred)

