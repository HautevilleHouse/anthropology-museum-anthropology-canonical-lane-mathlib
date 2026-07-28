import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure MaterialCultureClassificationPackage (A : AdmissibleClass) where
  artifactTypology : Prop
  technologicalStyle : Prop
  functionalCategory : Prop
  symbolicAttribution : Prop
  culturalProvenance : Prop

structure MaterialCultureClassificationEvidence {A : AdmissibleClass}
    (P : MaterialCultureClassificationPackage A) where
  artifactTypologyClosed : P.artifactTypology
  technologicalStyleClosed : P.technologicalStyle
  functionalCategoryClosed : P.functionalCategory
  symbolicAttributionClosed : P.symbolicAttribution
  culturalProvenanceClosed : P.culturalProvenance

def MaterialCultureClassificationClosed {A : AdmissibleClass}
    (P : MaterialCultureClassificationPackage A) : Prop :=
  P.artifactTypology ∧ P.technologicalStyle ∧
  P.functionalCategory ∧ P.symbolicAttribution ∧ P.culturalProvenance

theorem material_culture_classification_closed_from_evidence {A : AdmissibleClass}
    (P : MaterialCultureClassificationPackage A) (E : MaterialCultureClassificationEvidence P) :
    MaterialCultureClassificationClosed P := by
  exact And.intro E.artifactTypologyClosed
    (And.intro E.technologicalStyleClosed
      (And.intro E.functionalCategoryClosed
        (And.intro E.symbolicAttributionClosed E.culturalProvenanceClosed)))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse