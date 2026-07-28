import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyMuseumAnthropologyCanonicalLaneLean.PrimitiveMuseumExhibition
import HautevilleHouse.AnthropologyMuseumAnthropologyCanonicalLaneLean.MuseumCurationPDE

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure MuseumAnalyticFoundation where
  primitiveExhibition : PrimitiveExhibition
  curationPDE : MuseumCurationPDEPackage primitiveExhibition
  curationPDEEvidence : MuseumCurationPDEEvidence curationPDE

def MuseumAnalyticFoundationClosed (A : MuseumAnalyticFoundation) : Prop :=
  PrimitiveCurationClosed A.curationPDE.curationProcess ∧
  MuseumCurationPDEClosed A.curationPDE

theorem museum_analytic_foundation_closed_from_evidence (A : MuseumAnalyticFoundation) :
    MuseumAnalyticFoundationClosed A :=
  And.intro (primitive_curation_closed_from_evidence A.curationPDE.curationProcess)
    (museum_curation_pde_closed_from_evidence A.curationPDE A.curationPDEEvidence)

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse