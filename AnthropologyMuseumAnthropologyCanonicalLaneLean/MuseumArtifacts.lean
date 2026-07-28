import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MuseumSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedArtifact where
  museum : MuseumSpace
  catalogued : Prop
  provenanceDocumented : Prop
  conservationStatus : Prop
  conclusion : catalogued ∧ provenanceDocumented ∧ conservationStatus

structure MuseumEndgameState where
  object : AdmittedArtifact

def MuseumWitnessClosed (O : AdmittedArtifact) : Prop :=
  O.conclusion

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse