import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure CanonicalMapPackage {V : VarietyDimensionPackage} {D : DegreeBoundPackage V}
    {P : ProjectivityPackage V D} where
  canonicalSheaf : Type u
  canonicalMapDefined : Prop
  imageIsVariety : Prop
  imageDegreeBounded : Prop

structure CanonicalMapEvidence {V : VarietyDimensionPackage} {D : DegreeBoundPackage V}
    {P : ProjectivityPackage V D} (C : CanonicalMapPackage V D P) where
  canonicalMapDefinedClosed : C.canonicalMapDefined
  imageIsVarietyClosed : C.imageIsVariety
  imageDegreeBoundedClosed : C.imageDegreeBounded

def CanonicalMapClosed {V : VarietyDimensionPackage} {D : DegreeBoundPackage V}
    {P : ProjectivityPackage V D} (C : CanonicalMapPackage V D P) : Prop :=
  C.canonicalMapDefined ∧ C.imageIsVariety ∧ C.imageDegreeBounded

theorem canonical_map_closed_from_evidence
    {V : VarietyDimensionPackage} {D : DegreeBoundPackage V}
    {P : ProjectivityPackage V D} (C : CanonicalMapPackage V D P)
    (E : CanonicalMapEvidence C) : CanonicalMapClosed C := by
  exact And.intro E.canonicalMapDefinedClosed
    (And.intro E.imageIsVarietyClosed E.imageDegreeBoundedClosed)

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse