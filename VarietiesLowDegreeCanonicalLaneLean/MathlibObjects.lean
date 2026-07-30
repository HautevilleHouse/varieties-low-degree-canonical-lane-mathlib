import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure VarietiesLowDegreeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VarietiesLowDegreeAdmittedObject where
  space : VarietiesLowDegreeSpace
  projectiveVariety : Prop
  dimension : ℕ
  degree : ℕ
  lowDegreeCondition : degree ≤ 3
  fanoCondition : Prop
  smoothCondition : Prop
  picardRank : ℕ
  conclusion : lowDegreeCondition ∧ fanoCondition ∧ smoothCondition

structure VarietiesLowDegreeEndgameState where
  object : VarietiesLowDegreeAdmittedObject

def VarietiesLowDegreeWitnessClosed (O : VarietiesLowDegreeAdmittedObject) : Prop :=
  O.lowDegreeCondition ∧ O.fanoCondition ∧ O.smoothCondition

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse