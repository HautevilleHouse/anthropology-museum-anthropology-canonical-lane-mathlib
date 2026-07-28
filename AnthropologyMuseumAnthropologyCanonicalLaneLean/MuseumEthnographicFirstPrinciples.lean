import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure EthnographicFirstPrinciples (A : AdmissibleClass) where
  culturalRelativity : Prop
  holismPrinciple : Prop
  comparativeMethod : Prop
  reflexivityPractice : Prop

structure EthnographicFirstPrinciplesEvidence {A : AdmissibleClass}
    (P : EthnographicFirstPrinciples A) where
  culturalRelativityClosed : P.culturalRelativity
  holismPrincipleClosed : P.holismPrinciple
  comparativeMethodClosed : P.comparativeMethod
  reflexivityPracticeClosed : P.reflexivityPractice

def EthnographicFirstPrinciplesClosed {A : AdmissibleClass}
    (P : EthnographicFirstPrinciples A) : Prop :=
  P.culturalRelativity ∧ P.holismPrinciple ∧
  P.comparativeMethod ∧ P.reflexivityPractice

theorem ethnographic_first_principles_closed_from_evidence {A : AdmissibleClass}
    (P : EthnographicFirstPrinciples A) (E : EthnographicFirstPrinciplesEvidence P) :
    EthnographicFirstPrinciplesClosed P := by
  exact And.intro E.culturalRelativityClosed
    (And.intro E.holismPrincipleClosed
      (And.intro E.comparativeMethodClosed E.reflexivityPracticeClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse