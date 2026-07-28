import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure PrimitiveMuseumObject where
  ObjectId : Type
  Artifact : Type
  Provenance : Prop
  ConditionAssessment : Prop
  CulturalSignificance : Prop
  DisplayReady : Prop
  ProvenanceRecorded : Provenance
  ConditionAssessed : ConditionAssessment
  CulturalSignificanceEstablished : CulturalSignificance
  DisplayReadiness : DisplayReady

structure PrimitiveExhibition where
  ExhibitionId : Type
  Theme : Prop
  ArtifactsExhibited : List PrimitiveMuseumObject
  CuratorialRationale : Prop
  PublicEngagement : Prop
  ThemeEstablished : Theme
  RationaleArticulated : CuratorialRationale
  EngagementPlanned : PublicEngagement

structure PrimitiveCurationProcess where
  Exhibition : PrimitiveExhibition
  ConservationMeasures : Prop
  InterpretiveMaterials : Prop
  InstallationTimeline : Prop
  ConservationPlanned : ConservationMeasures
  InterpretiveMaterialsPrepared : InterpretiveMaterials
  TimelineEstablished : InstallationTimeline

def PrimitiveCurationClosed (C : PrimitiveCurationProcess) : Prop :=
  C.ConservationMeasures ∧ C.InterpretiveMaterials ∧ C.InstallationTimeline

theorem primitive_curation_closed_from_evidence (C : PrimitiveCurationProcess) : PrimitiveCurationClosed C :=
  And.intro C.ConservationPlanned (And.intro C.InterpretiveMaterialsPrepared C.TimelineEstablished)

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse