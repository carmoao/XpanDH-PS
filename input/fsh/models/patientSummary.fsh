// -------------------------------------------------------------------------------				
//  Logical Model				patientSummary.fsh
// -------------------------------------------------------------------------------				
Logical: PatientSummaryEhn				
Id: PatientSummary				
Title: "A - Patient Summary"				
Description:  """Patient Summary. eHN guideline model."""				
* header 1..1 BackboneElement "A.1 Report header data elements" """A.1 Report header data elements"""				
* header.subject 1..1 http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Subject "A.1.1 - A1.2 Patient/subject" """A.1.1 Identification of the patient/subject and A.1.2 Patient/subject related contact information  """				
* header.insuranceInfo 0..1 BackboneElement "A.1.3 Insurance information" """A.1.3 Insurance information"""				
* header.documentData 1..1 BackboneElement "A.1.4 Document data" """A.1.4 Document data"""				
* header.documentData.created 1..1 dateTime "A.1.4.1 Date created" """A.1.4.1 Date created - Date on which PS was generated"""				
* header.documentData.lastUpdate 0..1 dateTime "A.1.4.2 Date of last update" """A.1.4.2 Date of last update - Date on which PS was updated (date of most recent version)
Preferred system: ISO 8601"""				
* header.documentData.natureOfIPS 1..1 BackboneElement "A.1.4.3 Nature of the PS" """A.1.4.3 Nature of the PS - Defines the context in which it was generated. Distinguishes between three methodological approaches for generating the PS: direct human intervention by an HP, automatically generated approach and mixed approach"""				
* header.participant 1..* BackboneElement "A.1.5 Author and Organisation" """A.1.5 Author and Organisation"""				
* header.participant.author 1..* Identifier "A.1.5.1 Author organization" """A.1.5.1 Author organization - At least one Author and Organisation shall be listed. In the event that there is no Author, at least one Organisation shall be listed This Author should be able to provide further information on the provenance of the data present in the patient summary. Different authors contributing to individual sections and/or entries could be provided at the relevant level."""				
* header.participant.legalAuth 0..* CodeableConcept "A.1.5.2 Legal authenticator" """A.1.5.2 Legal authenticator - Legal entity (Health Professional or Health Care Provider) who authenticated the Patient Summary"""				
* additionalInfo 0..* BackboneElement "A.1.6 Additional information / Knowledge resources" """A.1.6 Additional information / Knowledge resources - """				
* additionalInfo.reference 0..* Reference "A.1.6.1 External reference" """A.1.6.1 External reference -  A reference leading to Clinical Practice Guidelines (CPG), emergency and anesthesia guidelines or other clinical relevant guidelines. This should be used only for providing specific guidance which may not be readily available to the health professional caring for the patient."""				
* additionalInfo.relatedWith 0..* Reference "A.1.6.2 Related with" """A.1.6.2 Related with - Identify the entry or entries of this Patient Summary for which this additional information relates with, for example a link between a rare disease problem (section A.2.3.1) and guidelines for that particular rare disease (this section)."""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
