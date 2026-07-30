import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.LowDegreeVariety

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure HodgeStructurePackage (V : LowDegreeVariety) where
  hodgeNumbers : ℕ × ℕ → ℕ
  hodgeDiamond : Matrix (V.dimension + 1) (V.dimension + 1) ℕ
  symmetry : ∀ i j, hodgeNumbers (i, j) = hodgeNumbers (j, i)
  hodgeDecomposition : Prop
  purityLowDegree : V.degree ≤ 3 → hodgeDecomposition

structure HodgeStructureEvidence {V : LowDegreeVariety} (H : HodgeStructurePackage V) where
  symmetryClosed : ∀ i j, H.hodgeNumbers (i, j) = H.hodgeNumbers (j, i)
  purityLowDegreeClosed : H.purityLowDegree (by
    have h : V.degree ≤ 3 := V.degreeBound
    exact h)

def HodgeStructureClosed {V : LowDegreeVariety} (H : HodgeStructurePackage V) : Prop :=
  (∀ i j, H.hodgeNumbers (i, j) = H.hodgeNumbers (j, i)) ∧
  H.purityLowDegree (V.degreeBound)

theorem hodge_structure_closed_from_evidence {V : LowDegreeVariety} (H : HodgeStructurePackage V) (E : HodgeStructureEvidence H) : HodgeStructureClosed H := by
  exact And.intro E.symmetryClosed E.purityLowDegreeClosed

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse