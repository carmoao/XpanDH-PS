//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  FlagPsXpandh
Parent:   Flag
Id:       Flag-ps-eu-xpandh
Title:    "Flag (EU PS)"
Description: "This profile constrains the Flag resource to represent alerts or warnings in FHIR for the purpose of this project."
//-------------------------------------------------------------------------------------------

* extension contains $flag-detail named flagDetailExt 0..*
* extension contains $flag-priority named flagPriorityExt 0..1
* extension[flagDetailExt]
* extension[flagPriorityExt]
* status ^short = "Alert status"
* code ^short = "Coded or textual message to display to user."
* subject only Reference(PatientPsXpandh)