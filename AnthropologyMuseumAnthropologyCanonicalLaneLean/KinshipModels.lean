import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure KinshipModelsPackage (A : AdmissibleClass) where
  descentSystemRecorded : Prop
  allianceExchangeMode : Prop
  terminologicalStructure : Prop
  residencePattern : Prop

structure KinshipModelsEvidence {A : AdmissibleClass} (P : KinshipModelsPackage A) where
  descentSystemRecordedClosed : P.descentSystemRecorded
  allianceExchangeModeClosed : P.allianceExchangeMode
  terminologicalStructureClosed : P.terminologicalStructure
  residencePatternClosed : P.residencePattern

def KinshipModelsClosed {A : AdmissibleClass} (P : KinshipModelsPackage A) : Prop :=
  P.descentSystemRecorded ∧ P.allianceExchangeMode ∧
  P.terminologicalStructure ∧ P.residencePattern

theorem kinship_models_closed_from_evidence {A : AdmissibleClass}
    (P : KinshipModelsPackage A) (E : KinshipModelsEvidence P) :
    KinshipModelsClosed P := by
  exact And.intro E.descentSystemRecordedClosed
    (And.intro E.allianceExchangeModeClosed
      (And.intro E.terminologicalStructureClosed E.residencePatternClosed))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse