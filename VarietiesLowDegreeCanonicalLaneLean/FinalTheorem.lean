import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

def ConstrainedVarietiesLowDegreeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_varieties_low_degree_endgame (A : AdmissibleClass) :
    ConstrainedVarietiesLowDegreeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse