import VariantsConvexSetsStarShapedCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ConvexSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  convexStructure : Prop

structure StarShapedSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  starStructure : Prop

structure ConvexStarObject where
  convexSpace : ConvexSpace
  starShapedSpace : StarShapedSpace
  convexStarProperty : Prop
  conclusion : convexStarProperty

def ConvexStarWitnessClosed (O : ConvexStarObject) : Prop :=
  O.convexStarProperty

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
