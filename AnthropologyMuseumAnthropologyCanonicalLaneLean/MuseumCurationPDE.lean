import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyMuseumAnthropologyCanonicalLaneLean.PrimitiveMuseumExhibition

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure MuseumCurationPDEPackage (E : PrimitiveExhibition) where
  curationProcess : PrimitiveCurationProcess
  dynamicConservation : Prop
  visitorExperienceSimulation : Prop
  dynamicConservationModeled : dynamicConservation
  visitorExperienceSimulated : visitorExperienceSimulation

structure MuseumCurationPDEEvidence {E : PrimitiveExhibition} (P : MuseumCurationPDEPackage E) where
  dynamicConservationClosed : P.dynamicConservation
  visitorExperienceSimulationClosed : P.visitorExperienceSimulation

def MuseumCurationPDEClosed {E : PrimitiveExhibition} (P : MuseumCurationPDEPackage E) : Prop :=
  P.dynamicConservation ∧ P.visitorExperienceSimulation

theorem museum_curation_pde_closed_from_evidence {E : PrimitiveExhibition} (P : MuseumCurationPDEPackage E) (Ev : MuseumCurationPDEEvidence P) :
    MuseumCurationPDEClosed P :=
  And.intro Ev.dynamicConservationClosed Ev.visitorExperienceSimulationClosed

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse