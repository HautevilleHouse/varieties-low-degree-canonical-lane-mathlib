import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure LowDegreeVariety where
  underlyingVariety : Type u
  topology : TopologicalSpace underlyingVariety
  structureSheaf : Type v
  dimension : ℕ
  projectiveSpaceEmbedding : underlyingVariety → ℙ^n
  degree : ℕ
  degreeBound : degree ≤ 3
  smoothness : Prop
  irreducibility : Prop

def lowDegreeVarietyAdmitted (V : LowDegreeVariety) : Prop :=
  V.smoothness ∧ V.irreducibility

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse