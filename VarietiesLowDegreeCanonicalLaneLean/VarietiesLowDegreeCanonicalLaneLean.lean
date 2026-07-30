import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.GateLemmas
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.FinalTheorem
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.LowDegreeHypersurfaces
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.RationalCurves
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.FanoVarieties

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

/-- The package aggregates all subdomain closures. -/
def VarietiesLowDegreePackageClosure : Prop :=
  ConstrainedVarietyClosure (AdmissibleClass.mk (by
    exact {
      projectiveVariety := Type
      topology := inferInstance
      dimension := 0
      lowDegreeCondition := True
      conclusion := True.intro
    }) True True (Or.inl True.intro))

theorem varieties_low_degree_package_closed : VarietiesLowDegreePackageClosure := by
  exact constrained_variety_endgame _

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse