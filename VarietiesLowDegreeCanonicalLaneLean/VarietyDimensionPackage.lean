import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure VarietyDimensionPackage where
  ambientProjectiveSpace : Type u
  dimension : Nat
  dimensionAtMostThree : Prop
  smoothnessAssumption : Prop
  irreducibilityAssumption : Prop

structure VarietyDimensionEvidence (V : VarietyDimensionPackage) where
  dimensionAtMostThreeClosed : V.dimensionAtMostThree
  smoothnessAssumptionClosed : V.smoothnessAssumption
  irreducibilityAssumptionClosed : V.irreducibilityAssumption

def VarietyDimensionClosed (V : VarietyDimensionPackage) : Prop :=
  V.dimensionAtMostThree ∧ V.smoothnessAssumption ∧ V.irreducibilityAssumption

theorem variety_dimension_closed_from_evidence
    (V : VarietyDimensionPackage) (E : VarietyDimensionEvidence V) :
    VarietyDimensionClosed V := by
  exact And.intro E.dimensionAtMostThreeClosed
    (And.intro E.smoothnessAssumptionClosed E.irreducibilityAssumptionClosed)

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse