import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure MuseumFormalizationPackage (A : AdmissibleClass) where
  collectionInventory : Prop
  exhibitionNarrative : Prop
  conservationProtocol : Prop
  repatriationPolicy : Prop

structure MuseumFormalizationEvidence {A : AdmissibleClass}
    (P : MuseumFormalizationPackage A) where
  collectionInventoryClosed : P.collectionInventory
  exhibitionNarrativeClosed : P.exhibitionNarrative
  conservationProtocolClosed : P.conservationProtocol
  repatriationPolicyClosed : P.repatriationPolicy

def MuseumFormalizationClosed {A : AdmissibleClass}
    (P : MuseumFormalizationPackage A) : Prop :=
  P.collectionInventory ∧ P.exhibitionNarrative ∧
  P.conservationProtocol ∧ P.repatriationPolicy

theorem museum_formalization_closed_from_evidence {A : AdmissibleClass}
    (P : MuseumFormalizationPackage A) (E : MuseumFormalizationEvidence P) :
    MuseumFormalizationClosed P := by
  exact And.intro E.collectionInventoryClosed
    (And.intro E.exhibitionNarrativeClosed
      (And.intro E.conservationProtocolClosed E.repatriationPolicyClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse