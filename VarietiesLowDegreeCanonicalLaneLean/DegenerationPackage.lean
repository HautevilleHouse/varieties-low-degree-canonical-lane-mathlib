import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure DegenerationPackage where
  smoothVarietyFamily : Prop
  specialFiber : Prop
  generalFiber : Prop
  mildSingularities : Prop
  numericalInvariantsConstant : Prop

structure DegenerationEvidence (D : DegenerationPackage) where
  smoothVarietyFamilyClosed : D.smoothVarietyFamily
  specialFiberClosed : D.specialFiber
  generalFiberClosed : D.generalFiber
  mildSingularitiesClosed : D.mildSingularities
  numericalInvariantsConstantClosed : D.numericalInvariantsConstant

def DegenerationClosed (D : DegenerationPackage) : Prop :=
  D.smoothVarietyFamily ∧ D.specialFiber ∧ D.generalFiber ∧ D.mildSingularities ∧ D.numericalInvariantsConstant

theorem degeneration_closed_from_evidence (D : DegenerationPackage) (E : DegenerationEvidence D) :
    DegenerationClosed D := by
  exact And.intro E.smoothVarietyFamilyClosed
    (And.intro E.specialFiberClosed
      (And.intro E.generalFiberClosed
        (And.intro E.mildSingularitiesClosed E.numericalInvariantsConstantClosed)))

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse