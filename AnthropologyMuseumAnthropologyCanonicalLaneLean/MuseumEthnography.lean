import AnthropologyMuseumAnthropologyCanonicalLaneLean.ArtifactProvenance

/-!
# Museum Ethnography Package
-/

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure MuseumEthnographyPackage {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    {M : MaterialCulturePackage C N T} {P : ArtifactProvenancePackage C N T M} where
  visitorExperienceStudied : Prop
  communityImpactAssessed : Prop
  institutionalPracticeReflected : Prop
  decolonizationProgressEvaluated : Prop

structure MuseumEthnographyEvidence {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    {M : MaterialCulturePackage C N T} {P : ArtifactProvenancePackage C N T M}
    (E : MuseumEthnographyPackage C N T M P) where
  visitorExperienceStudiedClosed : E.visitorExperienceStudied
  communityImpactAssessedClosed : E.communityImpactAssessed
  institutionalPracticeReflectedClosed : E.institutionalPracticeReflected
  decolonizationProgressEvaluatedClosed : E.decolonizationProgressEvaluated

def MuseumEthnographyClosed {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    {M : MaterialCulturePackage C N T} {P : ArtifactProvenancePackage C N T M}
    (E : MuseumEthnographyPackage C N T M P) : Prop :=
  E.visitorExperienceStudied ∧ E.communityImpactAssessed ∧ E.institutionalPracticeReflected ∧ E.decolonizationProgressEvaluated

theorem museum_ethnography_closed_from_evidence {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    {M : MaterialCulturePackage C N T} {P : ArtifactProvenancePackage C N T M}
    (E : MuseumEthnographyPackage C N T M P) (Ev : MuseumEthnographyEvidence E) : MuseumEthnographyClosed E := by
  exact And.intro Ev.visitorExperienceStudiedClosed
    (And.intro Ev.communityImpactAssessedClosed
      (And.intro Ev.institutionalPracticeReflectedClosed Ev.decolonizationProgressEvaluatedClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse