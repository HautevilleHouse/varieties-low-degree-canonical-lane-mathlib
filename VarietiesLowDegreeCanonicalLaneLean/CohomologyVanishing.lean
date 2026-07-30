import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.LowDegreeVariety

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure CohomologyVanishingPackage (V : LowDegreeVariety) where
  cohomologyGroup : Type u
  vanishingDegree : ℕ
  vanishingStatement : ∀ i > 0, cohomologyGroup i = 0
  vanishingForLowDegree : V.degree ≤ 3 → vanishingStatement

structure CohomologyVanishingEvidence {V : LowDegreeVariety} (C : CohomologyVanishingPackage V) where
  vanishingForLowDegreeClosed : C.vanishingForLowDegree (by
    have h : V.degree ≤ 3 := V.degreeBound
    exact h)

def CohomologyVanishingClosed {V : LowDegreeVariety} (C : CohomologyVanishingPackage V) : Prop :=
  C.vanishingForLowDegree (V.degreeBound)

theorem cohomology_vanishing_closed_from_evidence {V : LowDegreeVariety} (C : CohomologyVanishingPackage V) (E : CohomologyVanishingEvidence C) : CohomologyVanishingClosed C := by
  exact E.vanishingForLowDegreeClosed

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse