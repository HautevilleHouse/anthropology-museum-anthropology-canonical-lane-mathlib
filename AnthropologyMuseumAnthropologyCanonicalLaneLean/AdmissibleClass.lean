import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure MuseumAdmittedObject where
  exhibition : PrimitiveExhibition
  curationEvidence : PrimitiveCurationProcess
  conclusion : PrimitiveCurationClosed curationEvidence

structure MuseumAdmissibleClass where
  object : MuseumAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def museumAdmittedClosure (A : MuseumAdmissibleClass) : Prop :=
  PrimitiveCurationClosed A.object.curationEvidence ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse