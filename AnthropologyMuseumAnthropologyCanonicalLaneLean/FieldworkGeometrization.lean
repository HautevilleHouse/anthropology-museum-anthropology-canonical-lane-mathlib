import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure FieldworkGeometrizationPackage (A : AdmissibleClass) where
  participantObservation : Prop
  interviewData : Prop
  genealogicalMapping : Prop
  spatialAnalysis : Prop
  temporalDynamics : Prop

structure FieldworkGeometrizationEvidence {A : AdmissibleClass}
    (P : FieldworkGeometrizationPackage A) where
  participantObservationClosed : P.participantObservation
  interviewDataClosed : P.interviewData
  genealogicalMappingClosed : P.genealogicalMapping
  spatialAnalysisClosed : P.spatialAnalysis
  temporalDynamicsClosed : P.temporalDynamics

def FieldworkGeometrizationClosed {A : AdmissibleClass}
    (P : FieldworkGeometrizationPackage A) : Prop :=
  P.participantObservation ∧ P.interviewData ∧
  P.genealogicalMapping ∧ P.spatialAnalysis ∧ P.temporalDynamics

theorem fieldwork_geometrization_closed_from_evidence {A : AdmissibleClass}
    (P : FieldworkGeometrizationPackage A) (E : FieldworkGeometrizationEvidence P) :
    FieldworkGeometrizationClosed P := by
  exact And.intro E.participantObservationClosed
    (And.intro E.interviewDataClosed
      (And.intro E.genealogicalMappingClosed
        (And.intro E.spatialAnalysisClosed E.temporalDynamicsClosed)))

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse