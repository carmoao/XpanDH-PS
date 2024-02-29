
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerXpandh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id:       Practitioner-eu-xpandh
Title:    "Practitioner (EU PS)"
Description: "This profile defines how to represent Practitioners in FHIR for the purpose of the XpanDH project."

//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleXpandh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id:       PractitionerRole-eu-xpandh
Title:    "PractitionerRole (EU PS)"
Description: "This profile defines how to represent Practitioners (with thier roles) in FHIR for the purpose of the XpanDH project."
* identifier ^short = "PractitionerRole identifier"
* practitioner 1..
* practitioner only Reference ( PractitionerXpandh )
* organization ^short = "PractitionerRole's organization"



//-------------------------------------------------------------------------------------------
