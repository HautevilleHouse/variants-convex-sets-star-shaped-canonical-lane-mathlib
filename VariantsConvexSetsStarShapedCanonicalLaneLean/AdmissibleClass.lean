import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure StarShapedObject where
  carrier : Type u
  origin : carrier
  starCondition : (x : carrier) → Set carrier
  starClosed : Prop

structure AdmissibleClass where
  object : StarShapedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.starClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
