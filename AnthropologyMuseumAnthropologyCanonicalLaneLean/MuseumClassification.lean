import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure ClassificationScheme where
  hierarchicalLevels : Prop
  crossCulturalApplicability : Prop
  temporalEncoding : Prop
  spatialEncoding : Prop

structure ClassificationEvidence (S : ClassificationScheme) where
  hierarchicalLevelsClosed : S.hierarchicalLevels
  crossCulturalApplicabilityClosed : S.crossCulturalApplicability
  temporalEncodingClosed : S.temporalEncoding
  spatialEncodingClosed : S.spatialEncoding

def ClassificationClosed (S : ClassificationScheme) : Prop :=
  S.hierarchicalLevels ∧ S.crossCulturalApplicability ∧ S.temporalEncoding ∧ S.spatialEncoding

theorem classification_closed_from_evidence (S : ClassificationScheme) (E : ClassificationEvidence S) :
    ClassificationClosed S := by
  exact And.intro E.hierarchicalLevelsClosed
    (And.intro E.crossCulturalApplicabilityClosed
      (And.intro E.temporalEncodingClosed E.spatialEncodingClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse