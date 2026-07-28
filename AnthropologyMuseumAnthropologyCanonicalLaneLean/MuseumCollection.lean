import AnthropologyMuseumAnthropologyCanonicalLaneLean.AdmissibleClass

/-!
# Museum Collection Package
-/

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure MuseumCollectionPackage where
  collectionAssembled : Prop
  cataloguingComplete : Prop
  provenanceDocumented : Prop
  culturalSensitivityAssessed : Prop

structure MuseumCollectionEvidence (C : MuseumCollectionPackage) where
  collectionAssembledClosed : C.collectionAssembled
  cataloguingCompleteClosed : C.cataloguingComplete
  provenanceDocumentedClosed : C.provenanceDocumented
  culturalSensitivityAssessedClosed : C.culturalSensitivityAssessed

def MuseumCollectionClosed (C : MuseumCollectionPackage) : Prop :=
  C.collectionAssembled ∧ C.cataloguingComplete ∧ C.provenanceDocumented ∧ C.culturalSensitivityAssessed

theorem museum_collection_closed_from_evidence (C : MuseumCollectionPackage)
    (E : MuseumCollectionEvidence C) : MuseumCollectionClosed C := by
  exact And.intro E.collectionAssembledClosed
    (And.intro E.cataloguingCompleteClosed
      (And.intro E.provenanceDocumentedClosed E.culturalSensitivityAssessedClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse