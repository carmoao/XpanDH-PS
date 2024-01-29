//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationXpandh
Parent:   $Immunization-uv-ips
Id:       Immunization-xpandh
Title:    "Immunization (EU PS)"
Description: """This profile constrains the Immunization resource for the purpose of the European patient summary."""

//-------------------------------------------------------------------------------------------

* ^experimental = false
* ^purpose = "This profile constrains the Immunization resource for the purpose of the European patient summary."


/* * vaccineCode.coding ^slicing.discriminator[0].type = #pattern
* vaccineCode.coding ^slicing.discriminator[0].path = "$this"
* vaccineCode.coding ^slicing.ordered = false
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding ^short = "Type of vaccine"
* vaccineCode.coding ^definition = "Vaccine code: it might be a code describing the kind of vaccine (e.g. ATC, ICD 11); it might be one of the IDMP identifiers; it might be a jurisdictional product code"
* vaccineCode.coding contains   atcVaccines 0..1 and sctVaccines 0..1 // and icd11Vaccines 0..1
* vaccineCode.coding[atcVaccines] from AtcCovid19Vaccines
* vaccineCode.coding[sctVaccines] from SctCovid19Vaccines */
//* vaccineCode.coding[icd11Vaccines] from Icd11Covid19Vaccines  icd11 has not been selected by SGS

* vaccineCode from EHDSIVaccine
* vaccineCode.text ^short = "Name of the vaccine" // brandName

* patient only Reference(PatientXpandh)
* occurrence[x] only dateTime
// * location MS // check is really needed
// * location only Reference(LocationDCC)
// * manufacturer MS
// * lotNumber MS
* performer MS
// * protocolApplied.targetDisease MS
// * protocolApplied.targetDisease MS
/* * protocolApplied.targetDisease.coding ^slicing.discriminator[0].type = #pattern
* protocolApplied.targetDisease.coding ^slicing.discriminator[0].path = "$this"
* protocolApplied.targetDisease.coding ^slicing.ordered = false
* protocolApplied.targetDisease.coding ^slicing.rules = #open
* protocolApplied.targetDisease.coding contains sctCovid19Diseases 1..1
* protocolApplied.targetDisease.coding[sctCovid19Diseases] MS
* protocolApplied.targetDisease.coding[sctCovid19Diseases] from Covid19Diseases
 */
* protocolApplied.doseNumberPositiveInt ^short = "Dose Number"
* protocolApplied.seriesDosesPositiveInt ^short = "Number of doses"
