import AnthropologyMuseumAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AnthropologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse