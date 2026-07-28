import AnthropologyMuseumAnthropologyCanonicalLaneLean.CulturalTransmission

/-!
# Material Culture Package
-/

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure MaterialCulturePackage {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N} where
  objectBiographiesCompiled : Prop
  materialityAnalyzed : Prop
  conservationEthicsApplied : Prop
  repatriationConsidered : Prop

structure MaterialCultureEvidence {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    (M : MaterialCulturePackage C N T) where
  objectBiographiesCompiledClosed : M.objectBiographiesCompiled
  materialityAnalyzedClosed : M.materialityAnalyzed
  conservationEthicsAppliedClosed : M.conservationEthicsApplied
  repatriationConsideredClosed : M.repatriationConsidered

def MaterialCultureClosed {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    (M : MaterialCulturePackage C N T) : Prop :=
  M.objectBiographiesCompiled ∧ M.materialityAnalyzed ∧ M.conservationEthicsApplied ∧ M.repatriationConsidered

theorem material_culture_closed_from_evidence {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    (M : MaterialCulturePackage C N T) (E : MaterialCultureEvidence M) : MaterialCultureClosed M := by
  exact And.intro E.objectBiographiesCompiledClosed
    (And.intro E.materialityAnalyzedClosed
      (And.intro E.conservationEthicsAppliedClosed E.repatriationConsideredClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse