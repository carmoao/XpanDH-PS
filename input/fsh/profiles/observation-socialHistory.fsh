Profile: ObservationSocialHistoryXpandh
Parent: Observation
Id: Observation-socialHistory-xpandh
Title:    "Observation Social History (EU PS)"
Description: "This profile constrains the Observation resource to represent various types of social history observations in a patient summary."
* ^experimental = false
* ^purpose = "This profile constrains the Observation resource to represent various types of social history observations in a patient summary."
// TO BE MODIFIED
* status = #final (exactly)
* category only $CodeableConcept-uv-ips
* category = $observation-category#social-history
* code only $CodeableConcept-uv-ips
* code from EHDSISocialHistory
* subject 1.. MS
* subject only Reference(PatientPsXpandh)
  * reference 1.. 
* value[x] ^short = "Actual result."


