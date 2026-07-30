import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure DegreeBoundPackage (V : VarietyDimensionPackage) where
  degree : Nat
  degreeAtMostFive : Prop
  genericChoiceOfHyperplane : Prop
  boundUniform : Prop

structure DegreeBoundEvidence {V : VarietyDimensionPackage} (D : DegreeBoundPackage V) where
  degreeAtMostFiveClosed : D.degreeAtMostFive
  genericChoiceOfHyperplaneClosed : D.genericChoiceOfHyperplane
  boundUniformClosed : D.boundUniform

def DegreeBoundClosed {V : VarietyDimensionPackage} (D : DegreeBoundPackage V) : Prop :=
  D.degreeAtMostFive ∧ D.genericChoiceOfHyperplane ∧ D.boundUniform

theorem degree_bound_closed_from_evidence
    {V : VarietyDimensionPackage} (D : DegreeBoundPackage V) (E : DegreeBoundEvidence D) :
    DegreeBoundClosed D := by
  exact And.intro E.degreeAtMostFiveClosed
    (And.intro E.genericChoiceOfHyperplaneClosed E.boundUniformClosed)

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse