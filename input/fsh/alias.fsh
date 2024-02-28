//============== ALIAS ===============

//---- Extensions

Alias: $immunization-administeredProduct-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.administeredProduct
Alias: $immunization-basedOn-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.basedOn
Alias: $medicationStatement-dosage-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.dosage

//------- Code Systems
Alias: $loinc = http://loinc.org
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $icd11 = http://id.who.int/icd11/mms
Alias: $iso3166 = urn:iso:std:iso:3166
Alias: $Immunization-recommendation-status = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status
Alias: $sct = http://snomed.info/sct
Alias: $atc = http://www.whocc.no/atc
Alias: $v3-NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10
Alias: $ema = https://ec.europa.eu/health/documents/community-register/html/
Alias: $tempVaccine-eu = http://tempvaccine.eu
Alias: $mef-ae-comuni = http://terminology.hl7.it/CodeSystem/mef-ae-comuni
Alias: $it-tipoEntita = http://terminology.hl7.it/CodeSystem/it-tipoEntita
Alias: $dug = http://registry.geodati.gov.it/dug
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $aic = https://www.aifa.gov.it/aic // temporary URL
Alias: $istat-unitaAmministrativeTerritoriali = http://terminology.hl7.it/CodeSystem/istat-unitaAmministrativeTerritoriali
Alias: $minsan-regione = http://terminology.hl7.it/CodeSystem/minsan-regione
Alias: $spor = https://spor.ema.europa.eu/v1/organisations
Alias: $jrc = https://covid-19-diagnostics.jrc.ec.europa.eu/devices
Alias: $v2-0443 = http://terminology.hl7.org/CodeSystem/v2-0443

// Value Sets
/* Alias: $eHDSIReactionAllergy = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIReactionAllergy
Alias: $eHDSIActiveIngredient = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIActiveIngredient
Alias: $eHDSIAllergenNoDrug = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIAllergenNoDrug
Alias: $eHDSIAbsentOrUnknownAllergy = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIAbsentOrUnknownAllergy
Alias: $eHDSIAbsentOrUnknownProblem = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIAbsentOrUnknownProblem
Alias: $eHDSIIllnessandDisorder = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIIllnessandDisorder
Alias: $eHDSIRareDisease = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIRareDisease
Alias: $eHDSISeverity = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSISeverity
Alias: $eHDSIVaccine = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIVaccine
Alias: $eHDSIDoseForm = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIDoseForm
Alias: $eHDSIMedicalDevice = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIMedicalDevice
Alias: $eHDSISubstance = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSISubstance
Alias: $eHDSIBloodGroup = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSIBloodGroup
Alias: $eHDSISocialHistory = http://hl7.eu/fhir/ig/xpandh/ValueSet/eHDSISocialHistory */

// --- Data type profiles
Alias: $Address-eu = http://hl7.eu/fhir/laboratory/StructureDefinition/Address-eu
Alias: $HumanName-eu = http://hl7.eu/fhir/laboratory/StructureDefinition/HumanName-eu

//----------- Profiles
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: ips_lab_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
Alias: ips_path_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips
Alias: ips_rad_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Alias: $Medication-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips
Alias: $Immunization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Alias: $clinicaldocument = http://hl7.org/fhir/StructureDefinition/clinicaldocument
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $AllergyIntolerance-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
Alias: $Condition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips 
Alias: $Procedure-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips 
Alias: $Device-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: $Observation-bp = http://hl7.org/fhir/StructureDefinition/bp