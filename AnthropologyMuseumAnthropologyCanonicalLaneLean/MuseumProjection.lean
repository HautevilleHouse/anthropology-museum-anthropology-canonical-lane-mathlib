import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyMuseumAnthropologyCanonicalLaneLean.PrimitiveMuseumExhibition

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MuseumProjectionData where
  Exhibition : PrimitiveExhibition
  Curation : PrimitiveCurationProcess

def museumProjection : Projection MuseumProjectionData :=
  { toFun := λ x => x
  , idempotent := by intro x; rfl
  }

theorem museum_projection_idempotent (x : MuseumProjectionData) :
    museumProjection.toFun (museumProjection.toFun x) = museumProjection.toFun x :=
  museumProjection.idempotent x

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse