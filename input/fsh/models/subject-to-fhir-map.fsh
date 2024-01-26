// -------------------------------------------------------------------------------					
//  Concept Model. File: 					subject-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: subject2FHIR-eu-lab					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "LabRptSubject2Fhir"					
* title = "eHN Subject to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Subject Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Subject data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Subject"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Patient-ps-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Subject"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Patient-ps-xpandh"					
					
* group[=].element[+].code = #Subject.identification					
* group[=].element[=].display = "A.1.1 Identification of the patient/subject"					
* group[=].element[=].target.code = #Patient.Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Subject.identification.identifier					
* group[=].element[=].display = "A.1.1.1 National healthcare patient ID"					
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.familyName					
* group[=].element[=].display = "A.1.1.2 Family name/surname"					
* group[=].element[=].target.code = #Patient.name.family					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.givenName					
* group[=].element[=].display = "A.1.1.3 Given nameÿ"					
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.dateOfBirth					
* group[=].element[=].display = "A.1.1.4 Date of birthÿ"					
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.gender					
* group[=].element[=].display = "A.1.1.5 Gender"					
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.countryOfAffiliation					
* group[=].element[=].display = "A.1.1.5 Country of affiliation"					
* group[=].element[=].target.code = #Patient.address.country					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Assuming that the address is the 'offcial' address. This is how it is currently mapped in the eHDSI CDA Igs"					
* group[=].element[+].code = #Subject.telcomContact					
* group[=].element[=].display = "A.1.2.1 Patient address"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Subject.telcomContact.address					
* group[=].element[=].display = "Address"					
* group[=].element[=].target.code = #Patient.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.telcomContact.address.street					
* group[=].element[=].display = "A.1.2.1.1 Street"					
* group[=].element[=].target.code = #Patient.address.line					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Subject.telcomContact.address.street					
* group[=].element[=].display = "A.1.2.1.1 Street"					
* group[=].element[=].target.code = #Patient.address.line.extensioon:streetName					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"					
* group[=].element[+].code = #Subject.telcomContact.address.houseNumber					
* group[=].element[=].display = "A.1.2.1.2 House number"					
* group[=].element[=].target.code = #Patient.address.line.extensioon:houseNumber					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"					
* group[=].element[+].code = #Subject.telcomContact.address.city					
* group[=].element[=].display = "A.1.2.1.3 City"					
* group[=].element[=].target.code = #Patient.address.city					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.telcomContact.address.postalCode					
* group[=].element[=].display = "A.1.2.1.4 Post code"					
* group[=].element[=].target.code = #Patient.address.postalCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.telcomContact.address.stateOrProvince					
* group[=].element[=].display = "A.1.2.1.5 State or province"					
* group[=].element[=].target.code = #Patient.address.state					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.telcomContact.address.country					
* group[=].element[=].display = "A.1.2.1.6 Country"					
* group[=].element[=].target.code = #Patient.address.country					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "country name"					
* group[=].element[+].code = #Subject.telcomContact.address.country					
* group[=].element[=].display = "A.1.2.1.6 Country"					
* group[=].element[=].target.code = #Patient.address.country.extension:countryCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "country code.
http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"					
* group[=].element[+].code = #Subject.telcomContact.telephone					
* group[=].element[=].display = "A.1.2.1.7 Telephone no."					
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where system = 'phone '"					
* group[=].element[+].code = #Subject.telcomContact.email					
* group[=].element[=].display = "A.1.2.1.8 Email"					
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where system = 'email'"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
