import AnthropologyMuseumAnthropologyCanonicalLaneLean.MuseumEthnography

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

def MuseumAnthropologyAdmissibleObject (A : AdmissibleClass) : Prop :=
  A.object.conclusion

def ConstrainedMuseumAnthropologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_museum_anthropology_endgame (A : AdmissibleClass) :
    ConstrainedMuseumAnthropologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse