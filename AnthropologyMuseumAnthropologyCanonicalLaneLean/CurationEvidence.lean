import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure CurationPackage where
  preservationProtocol : Prop
  displayCondition : Prop
  loanProcedure : Prop
  deaccessionPolicy : Prop

structure CurationEvidence (C : CurationPackage) where
  preservationProtocolClosed : C.preservationProtocol
  displayConditionClosed : C.displayCondition
  loanProcedureClosed : C.loanProcedure
  deaccessionPolicyClosed : C.deaccessionPolicy

def CurationClosed (C : CurationPackage) : Prop :=
  C.preservationProtocol ∧ C.displayCondition ∧ C.loanProcedure ∧ C.deaccessionPolicy

theorem curation_closed_from_evidence (C : CurationPackage) (E : CurationEvidence C) :
    CurationClosed C := by
  exact And.intro E.preservationProtocolClosed
    (And.intro E.displayConditionClosed
      (And.intro E.loanProcedureClosed E.deaccessionPolicyClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse