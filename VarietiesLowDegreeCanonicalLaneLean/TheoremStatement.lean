import HautevilleHouse.VarietiesLowDegreeCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace VarietiesLowDegreeCanonicalLaneLean

structure VarietiesLowDegreeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VarietiesLowDegreeAdmittedObject where
  space : VarietiesLowDegreeSpace
  varietyLowDegree : Prop
  smoothProjective : Prop
  classificationModel : Type
  classificationTopology : TopologicalSpace classificationModel
  isomorphicToClassification : Prop
  conclusion : isomorphicToClassification

structure VarietiesLowDegreeEndgameState where
  object : VarietiesLowDegreeAdmittedObject

def VarietiesLowDegreeWitnessClosed (O : VarietiesLowDegreeAdmittedObject) : Prop :=
  O.isomorphicToClassification

end VarietiesLowDegreeCanonicalLaneLean
end HautevilleHouse