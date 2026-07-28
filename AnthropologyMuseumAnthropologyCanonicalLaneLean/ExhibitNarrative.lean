import AnthropologyMuseumAnthropologyCanonicalLaneLean.MuseumCollection

/-!
# Exhibit Narrative Package
-/

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure ExhibitNarrativePackage {C : MuseumCollectionPackage} where
  narrativeConstructed : Prop
  multivocalInterpretation : Prop
  communityConsultation : Prop
  narrativeClosedUnderReview : Prop

structure ExhibitNarrativeEvidence {C : MuseumCollectionPackage}
    (N : ExhibitNarrativePackage C) where
  narrativeConstructedClosed : N.narrativeConstructed
  multivocalInterpretationClosed : N.multivocalInterpretation
  communityConsultationClosed : N.communityConsultation
  narrativeClosedUnderReviewClosed : N.narrativeClosedUnderReview

def ExhibitNarrativeClosed {C : MuseumCollectionPackage} (N : ExhibitNarrativePackage C) : Prop :=
  N.narrativeConstructed ∧ N.multivocalInterpretation ∧ N.communityConsultation ∧ N.narrativeClosedUnderReview

theorem exhibit_narrative_closed_from_evidence {C : MuseumCollectionPackage}
    (N : ExhibitNarrativePackage C) (E : ExhibitNarrativeEvidence N) : ExhibitNarrativeClosed N := by
  exact And.intro E.narrativeConstructedClosed
    (And.intro E.multivocalInterpretationClosed
      (And.intro E.communityConsultationClosed E.narrativeClosedUnderReviewClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse