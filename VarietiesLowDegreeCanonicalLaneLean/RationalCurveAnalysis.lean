import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.LowDegreeVariety

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure RationalCurveAnalysisPackage (V : LowDegreeVariety) where
  rationalCurveExists : Prop
  rationalCurveDegree : ℕ
  degreeInequality : rationalCurveDegree ≤ V.degree
  dominationMap : ℙ¹ → V.underlyingVariety
  dominationProperty : ContinuousMap.IsClosedMap dominationMap

structure RationalCurveAnalysisEvidence {V : LowDegreeVariety} (R : RationalCurveAnalysisPackage V) where
  rationalCurveExistsClosed : R.rationalCurveExists
  degreeInequalityClosed : R.degreeInequality
  dominationPropertyClosed : R.dominationProperty

def RationalCurveAnalysisClosed {V : LowDegreeVariety} (R : RationalCurveAnalysisPackage V) : Prop :=
  R.rationalCurveExists ∧ R.degreeInequality ∧ R.dominationProperty

theorem rational_curve_analysis_closed_from_evidence {V : LowDegreeVariety} (R : RationalCurveAnalysisPackage V) (E : RationalCurveAnalysisEvidence R) : RationalCurveAnalysisClosed R := by
  exact And.intro E.rationalCurveExistsClosed (And.intro E.degreeInequalityClosed E.dominationPropertyClosed)

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse