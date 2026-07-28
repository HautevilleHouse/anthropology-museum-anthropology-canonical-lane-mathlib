import AnthropologyMuseumAnthropologyCanonicalLaneLean.MaterialCulture

/-!
# Artifact Provenance Package
-/

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure ArtifactProvenancePackage {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    {M : MaterialCulturePackage C N T} where
  ownershipHistoryTraced : Prop
  excavationContextDocumented : Prop
  legalityVerified : Prop
  ethicalAcquisitionConfirmed : Prop

structure ArtifactProvenanceEvidence {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    {M : MaterialCulturePackage C N T} (P : ArtifactProvenancePackage C N T M) where
  ownershipHistoryTracedClosed : P.ownershipHistoryTraced
  excavationContextDocumentedClosed : P.excavationContextDocumented
  legalityVerifiedClosed : P.legalityVerified
  ethicalAcquisitionConfirmedClosed : P.ethicalAcquisitionConfirmed

def ArtifactProvenanceClosed {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    {M : MaterialCulturePackage C N T} (P : ArtifactProvenancePackage C N T M) : Prop :=
  P.ownershipHistoryTraced ∧ P.excavationContextDocumented ∧ P.legalityVerified ∧ P.ethicalAcquisitionConfirmed

theorem artifact_provenance_closed_from_evidence {C : MuseumCollectionPackage}
    {N : ExhibitNarrativePackage C} {T : CulturalTransmissionPackage C N}
    {M : MaterialCulturePackage C N T} (P : ArtifactProvenancePackage C N T M)
    (E : ArtifactProvenanceEvidence P) : ArtifactProvenanceClosed P := by
  exact And.intro E.ownershipHistoryTracedClosed
    (And.intro E.excavationContextDocumentedClosed
      (And.intro E.legalityVerifiedClosed E.ethicalAcquisitionConfirmedClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse