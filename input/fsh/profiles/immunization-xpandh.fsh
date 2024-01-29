//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationPsXpandh
Parent:   $Immunization-uv-ips
Id:       Immunization-ps-eu-xpandh
Title:    "Immunization (EU PS)"
Description: """This profile constrains the Immunization resource for the purpose of the European patient summary."""

//-------------------------------------------------------------------------------------------

* ^experimental = false
* ^purpose = "This profile constrains the Immunization resource for the purpose of the European patient summary."

* extension contains $immunization-basedOn-r5 named basedOn 0..1
* extension[basedOn].valueReference only Reference ( ImmunizationRecommendationPsXpandh )

* extension contains ImmunizationAdministeredProduct named administeredProduct 0..1
* extension[administeredProduct].extension[concept]
* extension[administeredProduct].extension[reference].valueReference only Reference ( MedicationXpandh )


/* FIX THE ISSUE WITH CODEABLE REFERENCE
* extension contains $immunization-administeredProduct-r5 named administeredProduct 0..1
* extension[administeredProduct].extension[concept]
* extension[administeredProduct].extension[reference]  */
// .valueReference only Reference ( MedicationXpandh )
// * extension[administeredProduct].valueReference only Reference ( MedicationXpandh )

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

* vaccineCode from EHDSIVaccine (extensible)
* vaccineCode.text ^short = "Name of the vaccine" // brandName

* patient only Reference(PatientPsXpandh)
* occurrence[x] only dateTime
* location only Reference(LocationPsXpandh)
* manufacturer ^short = "Vaccine manufacturer/MAH"
* lotNumber ^short = "Batch/lot number"

* performer 
  * ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[0].path = "$this.actor.resolve()"
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[0].path = "$this.function"
  * ^slicing.ordered = false
  * ^slicing.rules = #open

* performer contains administeringCentre 0..*
* performer[administeringCentre] ^short = "Administering centre"
* performer[administeringCentre].function = $v2-0443#AP	// "Administering Provider" code to be checked
* performer[administeringCentre].actor only Reference( Organization )

* performer contains administeringHp 0..*
* performer[administeringHp] ^short = "Administering Health Professional"
* performer[administeringHp].function = $v2-0443#AP	// "Administering Provider" code to be checked
* performer[administeringHp].actor only Reference( PractitionerRoleXpandh or PractitionerXpandh )

// * protocolApplied.targetDisease MS
// * protocolApplied.targetDisease MS
/*
* protocolApplied.targetDisease.coding ^slicing.discriminator[0].type = #pattern
* protocolApplied.targetDisease.coding ^slicing.discriminator[0].path = "$this"
* protocolApplied.targetDisease.coding ^slicing.ordered = false
* protocolApplied.targetDisease.coding ^slicing.rules = #open
* protocolApplied.targetDisease.coding contains sctCovid19Diseases 1..1
* protocolApplied.targetDisease.coding[sctCovid19Diseases] MS
* protocolApplied.targetDisease.coding[sctCovid19Diseases] from Covid19Diseases
 */
* protocolApplied.targetDisease from EHDSIIllnessandDisorder (preferred) // Check Value Set
* protocolApplied.doseNumberPositiveInt ^short = "Dose Number"
* protocolApplied.seriesDosesPositiveInt ^short = "Number of doses"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationRecommendationPsXpandh
Parent:   ImmunizationRecommendation
Id:       ImmunizationRecommendation-ps-eu-xpandh
Title:    "ImmunizationRecommendation (EU PS)"
Description: """This profile defines how to represent Immunization Recommandations for the purpose of the European patient summary."""
//-------------------------------------------------------------------------------------------

* date MS
* patient MS
* recommendation.vaccineCode from EHDSIVaccine (extensible) 
  * ^short = "Generic description of the vaccine/prophylaxis or its component(s)"
* recommendation.targetDisease from EHDSIIllnessandDisorder (preferred) // Check Value Set
  * ^short = "Disease or agent that the vaccination provides protection against"
* recommendation.forecastStatus ^short = "Recommendation status"
* recommendation.dateCriterion ^slicing.discriminator[0].type = #pattern
* recommendation.dateCriterion ^slicing.discriminator[0].path = "code"
* recommendation.dateCriterion ^slicing.rules = #open
* recommendation.dateCriterion contains nextDose ..1
* recommendation.dateCriterion[nextDose].code = $loinc#30980-7
* recommendation.dateCriterion[nextDose].value 1..1
* recommendation.doseNumberPositiveInt ^short = "Dose Number"
* recommendation.seriesDosesPositiveInt ^short = "Number of doses"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LocationPsXpandh
Parent:   Location
Id:       Location-ps-eu-xpandh
Title:    "Location (EU PS)"
Description: """This profile defines how to represent Location in FHIR for the purpose of the European patient summary."""

//-------------------------------------------------------------------------------------------
* address.country 1..1