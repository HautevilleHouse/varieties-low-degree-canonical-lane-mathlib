import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure RationallyConnectedPackage where
  variety : Type u
  smoothProjective : Prop
  rationallyConnected : Prop
  degreeBound : Nat
  vanishingH1 : Prop

structure RationallyConnectedEvidence (R : RationallyConnectedPackage) where
  smoothProjectiveClosed : R.smoothProjective
  rationallyConnectedClosed : R.rationallyConnected
  vanishingH1Closed : R.vanishingH1

def RationallyConnectedClosed (R : RationallyConnectedPackage) : Prop :=
  R.smoothProjective ∧ R.rationallyConnected ∧ R.vanishingH1

theorem rationally_connected_closed_from_evidence
    (R : RationallyConnectedPackage) (E : RationallyConnectedEvidence R) :
    RationallyConnectedClosed R := by
  exact And.intro E.smoothProjectiveClosed
    (And.intro E.rationallyConnectedClosed E.vanishingH1Closed)

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse