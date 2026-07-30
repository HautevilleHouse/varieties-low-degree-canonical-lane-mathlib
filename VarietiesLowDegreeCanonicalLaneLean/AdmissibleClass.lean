import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure AdmissibleClass where
  object : LowDegreeVarietyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LowDegreeVarietyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse