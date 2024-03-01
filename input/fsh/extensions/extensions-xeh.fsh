Extension: ImmunizationAdministeredProduct
Id:   immunization-administeredProduct
Title:  "Immunization AdministeredProduct"
Description: """This extension references the Medication administered during the vaccination.
It simulates the beahviour of the reference part of the administeredProduct R5 element"""
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Immunization"
* extension contains concept 0..1 and reference 0..1
* extension[concept].value[x] only CodeableConcept
* extension[reference].value[x] only Reference
* extension[reference].valueReference only Reference (Medication)

Extension: SupportingInformation
Id:   supportingInformation
Title:  "Supporting Information"
Description: """This extension refers other resources from the patient record that may be relevant to the event. The information from these resources was either used to create the instance or is provided to help with its interpretation. This extension should not be used if more specific inline elements or extensions are available."""
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Condition"
* value[x] only Reference
* valueReference only Reference(DocumentReference)

/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: CompositionBasedOnOrderOrRequisition
Id:   composition-basedOn-order-or-requisition
Title:  "Document Based On Order"
Description: "This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* value[x] only Reference (ServiceRequest) or Identifier

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: DiagnosticReportBasedOnRequisition
Id:   diagnostic-report-basedOn-requisition
Title:  "DiagnosticReport Based On Requesition"
Description: "This extension provides a link to the requisition (ServiceRequest.requisition [i.e., 'groupIdentifier']) that this DiagnosticReport is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
// DiagnosticReport already includes 'basedOn' with Reference(ServiceRequest)
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport.basedOn"
* value[x] only Identifier


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
*/
