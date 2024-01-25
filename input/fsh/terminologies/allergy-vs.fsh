ValueSet:      EHDSIAllergyCode
Id:	       eHDSIAllergyCode
Title:	       "Allergens or no known or unknown conditions"
Description:   """Allergens or no known or unknown conditions""" 
* ^experimental = false
* codes from valueset EHDSIAllergenNoDrug
// TEST * codes from valueset EHDSIActiveIngredient
// ADD SUBSTANCES
* codes from valueset EHDSIAbsentOrUnknownAllergy

ValueSet:      EHDSIAllergens
Id:	       eHDSIAllergens
Title:	       "Allergens"
Description:   """Allergens""" 
* ^experimental = false
* codes from valueset EHDSIAllergenNoDrug
// TEST * codes from valueset EHDSIActiveIngredient
// ADD SUBSTANCES