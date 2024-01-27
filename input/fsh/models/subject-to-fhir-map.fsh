// -------------------------------------------------------------------------------					
//  Concept Model. File: 					subject-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: subject2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "LabRptSubject2Fhir"					
* title = "eHN Subject to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Subject Model to this guide Map"					
* purpose = "It shows how the Patient Summary Subject data set defined by the EU eHN guidelines is mapped into this guide"					
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
* group[=].element[=].display = "A.1.1.3 Given name"					
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.dateOfBirth					
* group[=].element[=].display = "A.1.1.4 Date of birth"					
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
* group[=].element[+].code = #Subject.hpToContact					
* group[=].element[=].display = "A.1.2.2 Preferred HP to contact"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "To be mapped in differetn places"					
* group[=].element[+].code = #Subject.hpToContact.name					
* group[=].element[=].display = "A.1.2.2.1 Name of the HP"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "To be mapped in differetn places"					
* group[=].element[+].code = #Subject.hpToContact.role					
* group[=].element[=].display = "A.1.2.2.2 Role of the HP"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "To be mapped in differetn places"					
* group[=].element[+].code = #Subject.hpToContact.organization					
* group[=].element[=].display = "A.1.2.2.3 HP Organisation"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "To be mapped in differetn places"					
* group[=].element[+].code = #Subject.hpToContact.telephone					
* group[=].element[=].display = "A.1.2.2.4 Telephone no."					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "To be mapped in differetn places"					
* group[=].element[+].code = #Subject.hpToContact.email					
* group[=].element[=].display = "A.1.2.2.5 Email"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "To be mapped in differetn places"					
* group[=].element[+].code = #Subject.hpToContact.affiliatedNetwork					
* group[=].element[=].display = "A.1.2.2.6 Network affiliation"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "To be mapped in differetn places"					
* group[=].element[+].code = #Subject.hpToContact.relatedWith					
* group[=].element[=].display = "A.1.2.2.7 Related with"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "To be mapped in differetn places"					
* group[=].element[+].code = #Subject.contactPerson					
* group[=].element[=].display = "A.1.2.3 Contact person/ legal guardian "					
* group[=].element[=].target.code = #Patient.contact					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.contactPerson.role					
* group[=].element[=].display = "A.1.2.3.1 Role of that person"					
* group[=].element[=].target.code = #Patient.contact.relationship					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be checked"					
* group[=].element[+].code = #Subject.contactPerson.relationship					
* group[=].element[=].display = "A.1.2.3.2 Relationship level"					
* group[=].element[=].target.code = #Patient.contact.relationship					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.contactPerson.givenName					
* group[=].element[=].display = "A.1.2.3.3 Given name"					
* group[=].element[=].target.code = #Patient.contact.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.contactPerson.familyName					
* group[=].element[=].display = "A.1.2.3.4 Family name/surname"					
* group[=].element[=].target.code = #Patient.contact.name.family					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.contactPerson.telephone					
* group[=].element[=].display = "A.1.2.3.5 Telephone no."					
* group[=].element[=].target.code = #Patient.contact.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.contactPerson.email					
* group[=].element[=].display = "A.1.2.3.6 Email"					
* group[=].element[=].target.code = #Patient.contact.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
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
//---END					
//---END					
//---END					
