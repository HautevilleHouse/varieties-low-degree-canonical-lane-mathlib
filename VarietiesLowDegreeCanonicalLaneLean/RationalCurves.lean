import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure RationalCurvePackage where
  variety : Type u
  freeCurveExists : Prop
  bendAndBreakApplicable : Prop
  dimensionPositive : Prop

def RationalCurveClosed (R : RationalCurvePackage) : Prop :=
  R.freeCurveExists ∧ R.bendAndBreakApplicable ∧ R.dimensionPositive

theorem rational_curve_closed_from_evidence (R : RationalCurvePackage) (e : R.freeCurveExists) (b : R.bendAndBreakApplicable) (d : R.dimensionPositive) :
    RationalCurveClosed R := by
  exact And.intro e (And.intro b d)

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse