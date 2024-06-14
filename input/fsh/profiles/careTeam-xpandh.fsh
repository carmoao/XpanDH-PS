Profile: CareTeamPsXpandh
Parent: CareTeam
Id: CareTeam-ps-xpandh
Title:    "CareTeam (EU PS)"
Description: """This profile constrains the CareTeam resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the CareTeam resource for the purpose of the European patient summary."

* name ^short = "Name of the care team (e.g. ERN)"
* participant.member only Reference (PractitionerRoleXpandh or Organization)