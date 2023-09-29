ValueSet:      EHDSIProblemCode
Id:	       eHDSIProblemCode
Title:	       "Problems or no known or unknown conditions"
Description:   """Problems or no known or unknown conditions""" 
* ^experimental = false

* codes from valueset $eHDSIIllnessandDisorder
* codes from valueset $eHDSIRareDisease
* codes from valueset $eHDSIAbsentOrUnknownProblem 

ValueSet:      EHDSICondition
Id:	       eHDSICondition
Title:	       "Conditions"
Description:   """Conditions""" 
* ^experimental = false

* codes from valueset $eHDSIIllnessandDisorder
* codes from valueset $eHDSIRareDisease
