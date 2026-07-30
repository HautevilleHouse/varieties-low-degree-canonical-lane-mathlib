import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure FreeRationalCurvePackage where
  variety : Type u
  rationalCurve : Type v
  freeCondition : Prop
  existsFreeCurve : Prop
  degreeBound : Nat

structure FreeRationalCurveEvidence (F : FreeRationalCurvePackage) where
  freeConditionClosed : F.freeCondition
  existsFreeCurveClosed : F.existsFreeCurve

def FreeRationalCurveClosed (F : FreeRationalCurvePackage) : Prop :=
  F.freeCondition ∧ F.existsFreeCurve

theorem free_rational_curve_closed_from_evidence
    (F : FreeRationalCurvePackage) (E : FreeRationalCurveEvidence F) :
    FreeRationalCurveClosed F := by
  exact And.intro E.freeConditionClosed E.existsFreeCurveClosed

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse