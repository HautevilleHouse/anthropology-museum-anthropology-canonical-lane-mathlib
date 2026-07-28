import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure TypologyPackage where
  artifactType : Type u
  materialCulture : Prop
  functionalCategory : Prop
  symbolicMeaning : Prop

structure TypologyEvidence (T : TypologyPackage) where
  materialCultureClosed : T.materialCulture
  functionalCategoryClosed : T.functionalCategory
  symbolicMeaningClosed : T.symbolicMeaning

def TypologyClosed (T : TypologyPackage) : Prop :=
  T.materialCulture ∧ T.functionalCategory ∧ T.symbolicMeaning

theorem typology_closed_from_evidence (T : TypologyPackage) (E : TypologyEvidence T) :
    TypologyClosed T := by
  exact And.intro E.materialCultureClosed
    (And.intro E.functionalCategoryClosed E.symbolicMeaningClosed)

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse