// -------------------------------------------------------------------------------				
//  Logical Model				ps-subject.fsh
// -------------------------------------------------------------------------------				
Logical: SubjectPsEhn				
Id: Subject				
Title: "A1.1, A1.2 - Subject of care"				
Description:  """Patient or Subject of care. Sections A1.1 and A1.2 of the eHN guideline."""				
* identification 1..1 BackboneElement "A.1.1.1 National healthcare patient ID" """A.1.1.1 National healthcare patient ID - Country ID, unique to the patient in that country. Example: ID for Portuguese patient"""				
* identification.identifier 0..* Identifier "A.1.1.2 Family name/surname" """A.1.1.2 Family name/surname - The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present."""				
* identification.familyName 0..* string "A.1.1.3 Given nameÿ" """A.1.1.3 Given nameÿ - The given name/first name of the patient (also known as forename or first name). This field can contain more than one element.ÿÿ"""		 		
* identification.givenName 0..* string "A.1.1.4 Date of birthÿ" """A.1.1.4 Date of birthÿ - The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided. - Preferred system(s): Complete date, without time, following the ISO 8601ÿ"""				
* identification.dateOfBirth 0..1 dateTime "A.1.1.5 Gender" """A.1.1.5 Gender - This field must contain a recognised valid value for ""administrative gender"".
If different, ""physiological gender"" should be communicated elsewhere. - Preferred system(s): HL7 Administrative Genderÿ"""				
* identification.gender 0..1 CodeableConcept "A.1.1.5 Country of affiliation" """A.1.1.5 Country of
affiliation - Name of country of affiliation  - Preferred system(s): ISO 3166"""				
* identification.countryOfAffiliation 0..1 CodeableConcept "A.1.2.1 Patient address" """A.1.2.1 Patient address - Patient address"""				
* telcomContact 0..* BackboneElement "Address" """Address"""				
* telcomContact.address 0..* BackboneElement "A.1.2.1.1 Street" """A.1.2.1.1 Street - Example: Rua dos Campeäes"""				
* telcomContact.address.street 0..1 string "A.1.2.1.2 House number" """A.1.2.1.2 House number - Example: 246"""				
* telcomContact.address.houseNumber 0..1 string "A.1.2.1.3 City" """A.1.2.1.3 City - Example: Porto"""				
* telcomContact.address.city 0..1 string "A.1.2.1.4 Post code" """A.1.2.1.4 Post code - Example: 4500"""				
* telcomContact.address.postalCode 0..1 string "A.1.2.1.5 State or province" """A.1.2.1.5 State or province - Example: Vila Nova de Gaia"""				
* telcomContact.address.stateOrProvince 0..1 string "A.1.2.1.6 Country" """A.1.2.1.6 Country - Example: PT - Preferred system(s): ISO 3166"""				
* telcomContact.address.country 0..1 CodeableConcept "A.1.2.1.7 Telephone no." """A.1.2.1.7 Telephone no. - Example: +351 20 7025 6161"""				
* telcomContact.telephone 0..* ContactPoint "A.1.2.1.8 Email" """A.1.2.1.8 Email - Example: jens@bigsmile.eu"""				
* telcomContact.email 0..* ContactPoint "" """"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
