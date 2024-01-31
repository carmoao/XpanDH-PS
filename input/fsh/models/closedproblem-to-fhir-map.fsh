// -------------------------------------------------------------------------------					
//  Concept Model. File: 					closedproblem-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: closedproblem2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "ClosedProblem2Fhir"					
* title = "eHN ClosedProblem to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN ClosedProblem Model to this guide Map"					
* purpose = "It shows how the ClosedProblem data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/ClosedProblemLab"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Condition-ps-eu-xpandh"					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/ClosedProblemLab"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Condition-ps-eu-xpandh"					
					
* group[=].element[+].code = #ClosedProblemLab.description					
* group[=].element[=].display = "A.2.2.2.1 Problem description"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #ClosedProblemLab.onsetDate					
* group[=].element[=].display = "A.2.2.2.2 Onset date"					
* group[=].element[=].target.code = #Condition.onsetDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #ClosedProblemLab.endDate					
* group[=].element[=].display = "A.2.2.2.3 End date"					
* group[=].element[=].target.code = #Condition.abatementDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #ClosedProblemLab.resolution					
* group[=].element[=].display = "A.2.2.2.4 Resolution circumstances"					
* group[=].element[=].target.code = #Condition.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "TBD"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
