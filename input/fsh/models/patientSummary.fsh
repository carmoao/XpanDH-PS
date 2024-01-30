// -------------------------------------------------------------------------------				
//  Logical Model				patientSummary.fsh
// -------------------------------------------------------------------------------				
Logical: PatientSummaryEhn				
Id: PatientSummary				
Title: "A - Patient Summary"				
Description:  """Patient Summary. eHN guideline model."""				
* header 1..1 BackboneElement "A.1 Report header data elements" """A.1 Report header data elements"""				
* header.subject 1..1 http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Subject "A.1.1 A1.2 Patient/subject" """A.1.1 Identification of the patient/subject and A.1.2 Patient/subject related contact information  """				
* header.insuranceInfo 0..1 BackboneElement "A.1.3 Insurance information" """A.1.3 Insurance information"""				
* header.documentData 1..1 BackboneElement "A.1.4 Document data" """A.1.4 Document data"""				
* header.documentData.created 1..1 dateTime "A.1.4.1 Date created" """A.1.4.1 Date created - Date on which PS was generated"""				
* header.documentData.lastUpdate 0..1 dateTime "A.1.4.2 Date of last update" """A.1.4.2 Date of last update - Date on which PS was updated (date of most recent version)
Preferred system: ISO 8601"""				
* header.documentData.natureOfIPS 1..1 BackboneElement "A.1.4.3 Nature of the PS" """A.1.4.3 Nature of the PS - Defines the context in which it was generated. Distinguishes between three methodological approaches for generating the PS: direct human intervention by an HP, automatically generated approach and mixed approach"""				
* header.participant 1..* BackboneElement "A.1.5 Author and Organisation" """A.1.5 Author and Organisation"""				
* header.participant.author 1..* Identifier "A.1.5.1 Author organization" """A.1.5.1 Author organization - At least one Author and Organisation shall be listed. In the event that there is no Author, at least one Organisation shall be listed This Author should be able to provide further information on the provenance of the data present in the patient summary. Different authors contributing to individual sections and/or entries could be provided at the relevant level."""				
* header.participant.legalAuth 0..* CodeableConcept "A.1.5.2 Legal authenticator" """A.1.5.2 Legal authenticator - Legal entity (Health Professional or Health Care Provider) who authenticated the Patient Summary"""				
* header.additionalInfo 0..* BackboneElement "A.1.6 Additional information / Knowledge resources" """A.1.6 Additional information / Knowledge resources - """				
* header.additionalInfo.reference 0..* Reference "A.1.6.1 External reference" """A.1.6.1 External reference -  A reference leading to Clinical Practice Guidelines (CPG), emergency and anesthesia guidelines or other clinical relevant guidelines. This should be used only for providing specific guidance which may not be readily available to the health professional caring for the patient."""				
* header.additionalInfo.relatedWith 0..* Reference "A.1.6.2 Related with" """A.1.6.2 Related with - Identify the entry or entries of this Patient Summary for which this additional information relates with, for example a link between a rare disease problem (section A.2.3.1) and guidelines for that particular rare disease (this section)."""				
* body 1..1 BackboneElement "A.2 Patient summary body data elements" """A.2 - Patient summary body data elements"""				
* body.alerts 1..1 BackboneElement "A.2.1 Alerts" """A.2.1 - Alerts"""				
* body.alerts.allergy 0..* http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Allergy "A.2.1.1 Allergy" """A.2.1.1 - Allergy"""				
* body.alerts.alert 0..* BackboneElement "A.2.1.2 Medical alert information (other alerts not included in allergies)" """A.2.1.2 - Medical alert information (other alerts not included in allergies)"""				
* body.alerts.alert.description 0..* string "A.2.1.2.1 Healthcare alert description" """Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat. 
Example 1: intolerance to aspirin due to gastrointestinal bleeding. 
Example 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)
Example 3: the patient has a rare disease that requires special treatment
Example 4: Airway Alert / Difficult Intubation
Example 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disvaccinations; special treatments like anticoagulants or immunosuppressants; implanted devices.
Example 6: transplanted organs illustrate other information that has to be taken into  account in a healthcare contact.
Example 7: participation in a clinical trial that has to be taken into account in a healthcare contact."""				
* body.medicalHistory 1..1 BackboneElement "A.2.2 Medical history" """A.2.2 - Medical history"""				
* body.medicalHistory.vaccination 0..* http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Vaccination "A.2.2.1 Vaccination/ prophylaxis information" """A.2.2.1 - Vaccination/ prophylaxis information"""				
* body.medicalHistory.inactiveProblem 0..* BackboneElement "A.2.2.2 Resolved, closed or inactive problems" """A.2.2.2 - Resolved, closed or inactive problems"""				
* body.medicalHistory.anamnesis 0..1 BackboneElement "A.2.2.3 Medical history" """A.2.2.3 - Medical history"""				
* body.medicalHistory.medicalDevices 1..1 BackboneElement "A.2.3.2 Medical devices and implants" """A.2.3.2 - Medical devices and implants"""				
* body.medicalHistory.procedures 1..1 BackboneElement "A.2.3.3 Procedures" """A.2.3.3 - Procedures"""				
* body.medicalHistory.functionalStatus 0..1 BackboneElement "A.2.3.4 Functional status" """A.2.3.4 - Functional status"""				
* body.medicationSummary 1..1 BackboneElement "A.2.4 Medication summary" """A.2.4 - Medication summary"""				
* body.medicationSummary.medication 1..* http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Medicine "A.2.4.1 Current and relevant past medicines" """Relevant prescribed medicines whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not, or medicines that influence current health status or are relevant to a clinical decision"""				
* body.socialHistory 0..1 BackboneElement "A.2.5 Social history" """A.2.5 - Social history"""				
* body.pregnancyHistory 0..1 BackboneElement "A.2.6 Pregnancy history" """A.2.6 Pregnancy history"""				
* body.patientData 0..1 BackboneElement "A.2.7 Patient provided data" """A.2.7 - Patient provided data"""				
* body.patientData.travelHistory 0..1 BackboneElement "A.2.7.1 Travel history" """A.2.7.1 - Travel history"""				
* body.patientData.advanceDirective 0..1 BackboneElement "A.2.7.2 Advance Directive" """A.2.7.2 - Advance Directive"""				
* body.results 0..1 BackboneElement "A.2.8 Results" """A.2.8 - Results"""				
* body.planOfCare 0..1 BackboneElement "A.2.9 Plan of Care" """A.2.9 - Plan of Care"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
