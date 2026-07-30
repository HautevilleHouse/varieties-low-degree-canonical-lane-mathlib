import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure ProjectivityPackage {V : VarietyDimensionPackage} {D : DegreeBoundPackage V} where
  projectiveEmbedding : Type u
  linearSystemVeryAmple : Prop
  naturalMapInjective : Prop
  closureOfImage : Prop

structure ProjectivityEvidence {V : VarietyDimensionPackage} {D : DegreeBoundPackage V}
    (P : ProjectivityPackage V D) where
  linearSystemVeryAmpleClosed : P.linearSystemVeryAmple
  naturalMapInjectiveClosed : P.naturalMapInjective
  closureOfImageClosed : P.closureOfImage

def ProjectivityClosed {V : VarietyDimensionPackage} {D : DegreeBoundPackage V}
    (P : ProjectivityPackage V D) : Prop :=
  P.linearSystemVeryAmple ∧ P.naturalMapInjective ∧ P.closureOfImage

theorem projectivity_closed_from_evidence
    {V : VarietyDimensionPackage} {D : DegreeBoundPackage V}
    (P : ProjectivityPackage V D) (E : ProjectivityEvidence P) :
    ProjectivityClosed P := by
  exact And.intro E.linearSystemVeryAmpleClosed
    (And.intro E.naturalMapInjectiveClosed E.closureOfImageClosed)

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse