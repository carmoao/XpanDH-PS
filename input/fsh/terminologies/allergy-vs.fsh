ValueSet:      EHDSIAllergyCode
Id:	       eHDSIAllergyCode
Title:	       "Allergens or no known or unknown conditions"
Description:   """Allergens or no known or unknown conditions""" 
* ^experimental = false
* codes from valueset $eHDSIAllergenNoDrug
* codes from valueset $eHDSIActiveIngredient
// ADD SUBSTANCES
* codes from valueset $eHDSIAbsentOrUnknownAllergy

ValueSet:      EHDSIAllergens
Id:	       eHDSIAllergens
Title:	       "Allergens"
Description:   """Allergens""" 
* ^experimental = false
* codes from valueset $eHDSIAllergenNoDrug
* codes from valueset $eHDSIActiveIngredient
// ADD SUBSTANCES