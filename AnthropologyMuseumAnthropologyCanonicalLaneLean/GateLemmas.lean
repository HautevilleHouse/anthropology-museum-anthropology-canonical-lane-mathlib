import HautevilleHouse.AnthropologyMuseumAnthropologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse