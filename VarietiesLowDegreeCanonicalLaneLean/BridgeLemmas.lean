import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LowDegreeVarietyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse