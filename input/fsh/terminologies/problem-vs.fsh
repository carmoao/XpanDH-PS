ValueSet:      EHDSIProblemCode
Id:	       eHDSIProblemCode
Title:	       "Problems or no known or unknown conditions"
Description:   """Problems or no known or unknown conditions""" 
* ^experimental = false

* codes from valueset EHDSIIllnessandDisorder
* codes from valueset EHDSIRareDisease
* codes from valueset EHDSIAbsentOrUnknownProblem 

ValueSet:      EHDSICondition
Id:	       eHDSICondition
Title:	       "Conditions"
Description:   """Conditions""" 
* ^experimental = false

* codes from valueset EHDSIIllnessandDisorder
* codes from valueset EHDSIRareDisease