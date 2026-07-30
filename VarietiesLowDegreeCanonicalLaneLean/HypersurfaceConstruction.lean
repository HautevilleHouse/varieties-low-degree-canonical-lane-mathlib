import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.LowDegreeVariety

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure HypersurfaceConstruction {V : LowDegreeVariety} where
  homogeneousPolynomial : ℙ^n → ℙ^1
  definingEquation : ∀ x : V.underlyingVariety, homogeneousPolynomial (V.projectiveSpaceEmbedding x) = 0
  polynomialDegree : ℕ
  degreeBound : polynomialDegree = V.degree
  smoothHypersurface : Prop
  smoothHypersurfaceClosed : smoothHypersurface

structure HypersurfaceEvidence {V : LowDegreeVariety} (H : HypersurfaceConstruction V) where
  polynomialDegreeClosed : H.polynomialDegree = V.degree
  smoothHypersurfaceClosed : H.smoothHypersurface

def HypersurfaceClosed {V : LowDegreeVariety} (H : HypersurfaceConstruction V) : Prop :=
  H.polynomialDegree = V.degree ∧ H.smoothHypersurface

theorem hypersurface_closed_from_evidence {V : LowDegreeVariety} (H : HypersurfaceConstruction V) (E : HypersurfaceEvidence H) : HypersurfaceClosed H := by
  exact And.intro E.polynomialDegreeClosed E.smoothHypersurfaceClosed

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse