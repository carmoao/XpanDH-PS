
//====== Profiles =====================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OrganizationCareProviderXpandh
Parent:   $Organization-uv-ips
Id:       Organization-careprovider-eu-xpandh
Title:    "Organization: Care provisioning"
Description: "This profile constrains the Organization IPS profile to represent care provisioning organanizations (as RD centers) for the purpose of the XpanDH project."
//-------------------------------------------------------------------------------------------

* type MS
* telecom MS
* address MS
* partOf ^short = "The organization of which this organization is part of: e.g. an ERN"
* partOf only Reference (OrganizationCareProviderXpandh or Organization)
* contact MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CareTeamXpandh
Parent:   CareTeam
Id:       CareTeam-eu-xpandh
Title:    "CareTeam"
Description: "This profile constrains the CareTeam resource for the purpose of the XpanDH project."
//-------------------------------------------------------------------------------------------

* subject only Reference(PatientPsXpandh)
* subject MS
* participant 1.. MS
* participant.role MS
* participant.member 1.. MS
* participant.member only Reference (Practitioner or PractitionerRole or RelatedPerson or OrganizationCareProviderXpandh or CareTeamXpandh)
* reasonCode ^short = "Problem this team is in charge of"
* reasonReference only Reference(ConditionPsXpandh)


//-------------------------------------------------------------------------------------------
