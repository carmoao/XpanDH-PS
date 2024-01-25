// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIAbsentOrUnknown.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIAbsentOrUnknownAllergy					
Id: eHDSIAbsentOrUnknownAllergy					
Title: "Absent or Unknown Allergies"					
Description: """Absent or Unknown Allergies"""

* ^url = "http://fhir.ehdsi.eu/mvc/eHDSIAbsentOrUnknownAllergy"
* ^status = #active					
* ^experimental = false					
					
* $absent-unknown-uv-ips#no-allergy-info  "No information about allergies"					
* $absent-unknown-uv-ips#no-known-allergies  "No known allergies"					
* $absent-unknown-uv-ips#no-known-medication-allergies  "No known medication allergies"					
* $absent-unknown-uv-ips#no-known-environmental-allergies  "No known environmental allergies"					
* $absent-unknown-uv-ips#no-known-food-allergies  "No known food allergies"					
//---END					
//---END					
//---END					
// -------------------------------------------------------------------------------					
// eHDSIAbsentOrUnknownDevice					
// -------------------------------------------------------------------------------					
ValueSet: EHDSIAbsentOrUnknownDevice					
Id: eHDSIAbsentOrUnknownDevice					
Title: "Absent or Unknown Device"					
Description: "Absent or Unknown Device"					
* ^url = "http://fhir.ehdsi.eu/mvc/eHDSIAbsentOrUnknownDevice"					
* ^status = #active					
* ^experimental = false					
					
* $absent-unknown-uv-ips#no-device-info  "No information about device"					
* $absent-unknown-uv-ips#no-known-devices  "No known devices in use"					
//---END					
//---END					
//---END					
					
					
// -------------------------------------------------------------------------------					
// eHDSIAbsentOrUnknownMedication					
// -------------------------------------------------------------------------------					
ValueSet: EHDSIAbsentOrUnknownMedication					
Id: eHDSIAbsentOrUnknownMedication					
Title: "Absent or Unknown Medication"					
Description: "Absent or Unknown Medication"					
* ^url = "http://fhir.ehdsi.eu/mvc/eHDSIAbsentOrUnknownMedication"
* ^status = #active					
* ^experimental = false					
					
* $absent-unknown-uv-ips#no-medication-info  "No information about medications"					
* $absent-unknown-uv-ips#no-known-medications  "No known medications"					
//---END					
//---END					
//---END					
					
// -------------------------------------------------------------------------------					
// eHDSIAbsentOrUnknownProblem					
// -------------------------------------------------------------------------------					
ValueSet: EHDSIAbsentOrUnknownProblem					
Id: eHDSIAbsentOrUnknownProblem					
Title: "Absent or Unknown Problem"					
Description: "Absent or Unknown Problem"					
* ^url = "http://fhir.ehdsi.eu/mvc/eHDSIAbsentOrUnknownProblem"
* ^status = #active					
* ^experimental = false					
					
* $absent-unknown-uv-ips#no-problem-info  "No information about current problems"					
* $absent-unknown-uv-ips#no-known-problems  "No known problems"					
//---END					
//---END					
//---END					
//---END					
// -------------------------------------------------------------------------------					
// eHDSIAbsentOrUnknownProcedure					
// -------------------------------------------------------------------------------					
ValueSet: EHDSIAbsentOrUnknownProcedure					
Id: eHDSIAbsentOrUnknownProcedure					
Title: "Absent or Unknown Procedure"					
Description: "Absent or Unknown Procedure"					
* ^url = "http://fhir.ehdsi.eu/mvc/eHDSIAbsentOrUnknownProcedure"
* ^status = #active					
* ^experimental = false					
					
* $absent-unknown-uv-ips#no-procedure-info  "No information about past history of procedures"					
* $absent-unknown-uv-ips#no-known-procedures  "No known procedures"					
//---END					
//---END					
//---END					
