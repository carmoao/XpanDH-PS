// -------------------------------------------------------------------------------					
//  Concept Model. File: 					vaccination-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: vaccination2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = ##34#http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris##34#					
* name = ##34#Vaccination2Fhir##34#					
* title = ##34#eHN Vaccination to this guide Map##34#					
* status = #draft					
* experimental = true					
* description = ##34#eHN Vaccination infos to this guide Map##34#					
* purpose = ##34#It shows how the Vaccination data set defined by the EU eHN guidelines is mapped into this guide##34#					
* sourceUri = ##34#http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Vaccination##34#					
* targetUri = ##34#http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Immunization-ps-eu-xpandh##34#					
					
* group[+].source = ##34#http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Vaccination##34#					
* group[=].target = ##34#http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Immunization-ps-eu-xpandh##34#					
					
* group[=].element[+].code = #Vaccination.targetDisease					
* group[=].element[=].display = ##34#A.2.2.1.1 Disease or agent targeted##34#					
* group[=].element[=].target.code = #Immunization.protocolApplied.targetDisease					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.vaccine					
* group[=].element[=].display = ##34#A.2.2.1.2 Vaccine/prophylaxis##34#					
* group[=].element[=].target.code = #Immunization.vaccineCode					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.productName					
* group[=].element[=].display = ##34#A.2.2.1.3 Vaccine medicinal product name##34#					
* group[=].element[=].target.code = #Immunization.extension:administeredProduct.extension[concept].valueCodeableConcept.text					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Vaccination.productId					
* group[=].element[=].display = ##34#A.2.2.1.3.1 Identifier of the vaccine medicinal product##34#					
* group[=].element[=].target.code = #Immunization.extension:administeredProduct.extension[concept].valueCodeableConcept					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Vaccination.marketingAuthorisationHolder					
* group[=].element[=].display = ##34#A.2.2.1.4 Marketing Autorisation Holder##34#					
* group[=].element[=].target.code = #Immunization.manufacturer					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Vaccination.numberInSeries					
* group[=].element[=].display = ##34#A.2.2.1.5 Number in a series of vaccinations/doses##34#					
* group[=].element[=].target.code = #Immunization.protocolApplied.doseNumber[x]					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#It is a combination of doseNumber and SeriesNumber##34#					
* group[=].element[+].code = #Vaccination.numberInSeries					
* group[=].element[=].display = ##34#A.2.2.1.5 Number in a series of vaccinations/doses##34#					
* group[=].element[=].target.code = #Immunization.protocolApplied.seriesDoses[x]					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#It is a combination of doseNumber and SeriesNumber##34#					
* group[=].element[+].code = #Vaccination.batchNumber					
* group[=].element[=].display = ##34#A.2.2.1.6 Batch/lot number##34#					
* group[=].element[=].target.code = #Immunization.lotNumber					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.dateOfVaccination					
* group[=].element[=].display = ##34#A.2.2.1.7 Date of vaccination##34#					
* group[=].element[=].target.code = #Immunization.occurrenceDateTime					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.administeringCentre					
* group[=].element[=].display = ##34#A.2.2.1.8 Administering centre##34#					
* group[=].element[=].target.code = #Immunization.performer.actor:administeringCentre					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
"* group[=].element[=].target.comment = ##34#actor of type Organization. 
If it is the organization performing the vaccination##34#"					
* group[=].element[+].code = #Vaccination.administeringCentre					
* group[=].element[=].display = ##34#A.2.2.1.8 Administering centre##34#					
* group[=].element[=].target.code = #Immunization.location					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#If it refer to where the vaccianiton ttok place##34#					
* group[=].element[+].code = #Vaccination.healthProfessionalId					
* group[=].element[=].display = ##34#A.2.2.1.9 Health Professional identification##34#					
* group[=].element[=].target.code = #Immunization.performer.actor:administeringHp.identifier					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = ##34#actor of type PractitonerRole or Practitioner. ##34#					
* group[=].element[+].code = #Vaccination.countryOfVaccination					
* group[=].element[=].display = ##34#A.2.2.1.10 Country of vaccination##34#					
* group[=].element[=].target.code = #Immunization.location.address.country					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.dateOfNextVaccination					
* group[=].element[=].display = ##34#A.2.2.1.11 Next vaccination date##34#					
* group[=].element[=].target.code = #Immunization.extension:basedOn.recommendation.dateCriterion:nextDose.value					
* group[=].element[=].target.display = ##34###34#					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
