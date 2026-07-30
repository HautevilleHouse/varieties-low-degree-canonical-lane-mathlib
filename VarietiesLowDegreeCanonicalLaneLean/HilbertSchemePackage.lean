import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure HilbertSchemePackage where
  parameterSpace : Type u
  universalFamily : Type v
  smoothness : Prop
  dimensionComputed : Prop
  rationality : Prop

structure HilbertSchemeEvidence (H : HilbertSchemePackage) where
  parameterSpaceClosed : H.parameterSpace
  universalFamilyClosed : H.universalFamily
  smoothnessClosed : H.smoothness
  dimensionComputedClosed : H.dimensionComputed
  rationalityClosed : H.rationality

def HilbertSchemeClosed (H : HilbertSchemePackage) : Prop :=
  H.parameterSpace ∧ H.universalFamily ∧ H.smoothness ∧ H.dimensionComputed ∧ H.rationality

theorem hilbert_scheme_closed_from_evidence (H : HilbertSchemePackage) (E : HilbertSchemeEvidence H) :
    HilbertSchemeClosed H := by
  exact And.intro E.parameterSpaceClosed
    (And.intro E.universalFamilyClosed
      (And.intro E.smoothnessClosed
        (And.intro E.dimensionComputedClosed E.rationalityClosed)))

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse