// -------------------------------------------------------------------------------				
//  Logical Model				ps-subject.fsh
// -------------------------------------------------------------------------------				
Logical: SubjectPsEhn				
Id: Subject				
Title: "A1.1, A1.2 - Subject of care"				
Description:  """Patient or Subject of care. Sections A1.1 and A1.2 of the eHN guideline."""				
* identification 1..1 BackboneElement "A.1.1.1 National healthcare patient ID" """A.1.1.1 National healthcare patient ID - Country ID, unique to the patient in that country. Example: ID for Portuguese patient"""				
* identification.identifier 0..* Identifier "A.1.1.2 Family name/surname" """A.1.1.2 Family name/surname - The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present."""				
* identification.familyName 0..* string "A.1.1.3 Given name" """A.1.1.3 Given name� - The given name/first name of the patient (also known as forename or first name). This field can contain more than one element.��"""		 		
* identification.givenName 0..* string "A.1.1.4 Date of birth" """A.1.1.4 Date of birth� - The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided. - Preferred system(s): Complete date, without time, following the ISO 8601�"""				
* identification.dateOfBirth 0..1 dateTime "A.1.1.5 Gender" """A.1.1.5 Gender - This field must contain a recognised valid value for ""administrative gender"".
If different, ""physiological gender"" should be communicated elsewhere. - Preferred system(s): HL7 Administrative Gender�"""				
* identification.gender 0..1 CodeableConcept "A.1.1.5 Country of affiliation" """A.1.1.5 Country of
affiliation - Name of country of affiliation  - Preferred system(s): ISO 3166"""				
* identification.countryOfAffiliation 0..1 CodeableConcept "A.1.2.1 Patient address" """A.1.2.1 Patient address - Patient address"""				
* telcomContact 0..* BackboneElement "Address" """Address"""				
* telcomContact.address 0..* BackboneElement "A.1.2.1.1 Street" """A.1.2.1.1 Street - Example: Rua dos Campe�es"""				
* telcomContact.address.street 0..1 string "A.1.2.1.2 House number" """A.1.2.1.2 House number - Example: 246"""				
* telcomContact.address.houseNumber 0..1 string "A.1.2.1.3 City" """A.1.2.1.3 City - Example: Porto"""				
* telcomContact.address.city 0..1 string "A.1.2.1.4 Post code" """A.1.2.1.4 Post code - Example: 4500"""				
* telcomContact.address.postalCode 0..1 string "A.1.2.1.5 State or province" """A.1.2.1.5 State or province - Example: Vila Nova de Gaia"""				
* telcomContact.address.stateOrProvince 0..1 string "A.1.2.1.6 Country" """A.1.2.1.6 Country - Example: PT - Preferred system(s): ISO 3166"""				
* telcomContact.address.country 0..1 CodeableConcept "A.1.2.1.7 Telephone no." """A.1.2.1.7 Telephone no. - Example: +351 20 7025 6161"""				
* telcomContact.telephone 0..* ContactPoint "A.1.2.1.8 Email" """A.1.2.1.8 Email - Example: jens@bigsmile.eu"""				
* telcomContact.email 0..* ContactPoint "A.1.2.2 Preferred HP to contact" """A.1.2.2 Preferred HP to contact - This section can be repeated and linked to any specific information in the Patient Summary, for example a link between a rare disease problem (A.2.3.1) and the rare disease specialist responsible for the care of the individual patient (this section)."""				
* hpToContact 0..* BackboneElement "A.1.2.2.1 Name of the HP" """A.1.2.2.1 Name of the HP - Name of the Health Professional that has been treating or taking responsibility for the patient."""				
* hpToContact.name 0..* string "A.1.2.2.2 Role of the HP" """A.1.2.2.2 Role of the HP - Health professional role"""				
* hpToContact.role 0..* CodeableConcept "A.1.2.2.3 HP Organisation" """A.1.2.2.3 HP Organisation - Health professional organisation"""				
* hpToContact.organization 0..* BackboneElement "A.1.2.2.4 Telephone no." """A.1.2.2.4 Telephone no. - Example: +45 20 7025 6161"""				
* hpToContact.telephone 0..* ContactPoint "A.1.2.2.5 Email" """A.1.2.2.5 Email - Email of the HP/legal organisation"""				
* hpToContact.email 0..* ContactPoint "A.1.2.2.6 Network affiliation" """A.1.2.2.6 Network affiliation - The HP organization is affiliated with a European network, for example an ERN."""				
* hpToContact.affiliatedNetwork 0..* BackboneElement "A.1.2.2.7 Related with" """A.1.2.2.7 Related with - Identify the entry or entries of this Patient Summary for which the health professional is the preferred contact."""				
* hpToContact.relatedWith 0..* Reference "A.1.2.3 Contact person/ legal guardian " """A.1.2.3 Contact person/ legal guardian  - Role of the contact person: legal guardian, next of kin, other person to contact - Preferred system(s): HL7 RoleClass"""				
* contactPerson 0..* BackboneElement "A.1.2.3.1 Role of that person" """A.1.2.3.1 Role of that person - Relationship type with the patient (e.g. father, wife, daughter) HL7 RoleCode"""				
* contactPerson.role 0..* CodeableConcept "A.1.2.3.2 Relationship level" """A.1.2.3.2 Relationship level - The first name of the contact person/guardian (Example: Peter). This field can contain more than one element."""				
* contactPerson.relationship 0..* CodeableConcept "A.1.2.3.3 Given name" """A.1.2.3.3 Given name - The first name of the contact person/guardian (Example: Peter). This field can contain more than one element."""				
* contactPerson.givenName 0..* string "A.1.2.3.4 Family name/surname" """A.1.2.3.4 Family name/surname - This field can contain more than one element.
Example: Espa�ol Smith"""				
* contactPerson.familyName 0..* string "A.1.2.3.5 Telephone no." """A.1.2.3.5 Telephone no. - Example: +45 20 7025 6161"""				
* contactPerson.telephone 0..* ContactPoint "A.1.2.3.6 Email" """A.1.2.3.6 Email - Email of the contact person/legal guardian"""				
* contactPerson.email 0..* ContactPoint "" """"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
