import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure ProvenanceChainPackage where
  chainLength : Nat
  eachTransferDocumented : Prop
  lawfulAcquisition : Prop
  chainIntegrity : Prop

structure ProvenanceChainEvidence (P : ProvenanceChainPackage) where
  eachTransferDocumentedClosed : P.eachTransferDocumented
  lawfulAcquisitionClosed : P.lawfulAcquisition
  chainIntegrityClosed : P.chainIntegrity

def ProvenanceChainClosed (P : ProvenanceChainPackage) : Prop :=
  P.eachTransferDocumented ∧ P.lawfulAcquisition ∧ P.chainIntegrity

theorem provenance_chain_closed_from_evidence (P : ProvenanceChainPackage) (E : ProvenanceChainEvidence P) :
    ProvenanceChainClosed P := by
  exact And.intro E.eachTransferDocumentedClosed
    (And.intro E.lawfulAcquisitionClosed E.chainIntegrityClosed)

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse