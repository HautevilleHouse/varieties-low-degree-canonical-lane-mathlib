import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure HypersurfaceDegreePackage where
  ambientProjectiveSpace : Type u
  homogeneousPolynomial : Type v
  degree : Nat
  smoothHypersurface : Prop
  degreeLowEnough : Prop

structure HypersurfaceDegreeEvidence (H : HypersurfaceDegreePackage) where
  smoothHypersurfaceClosed : H.smoothHypersurface
  degreeLowEnoughClosed : H.degreeLowEnough

def HypersurfaceDegreeClosed (H : HypersurfaceDegreePackage) : Prop :=
  H.smoothHypersurface ∧ H.degreeLowEnough

theorem hypersurface_degree_closed_from_evidence
    (H : HypersurfaceDegreePackage) (E : HypersurfaceDegreeEvidence H) :
    HypersurfaceDegreeClosed H := by
  exact And.intro E.smoothHypersurfaceClosed E.degreeLowEnoughClosed

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse