import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ConvexHullPackage where
  space : Type u
  spaceTopology : TopologicalSpace space
  addition : space → space → space
  scalarMul : ℝ → space → space
  baseSet : Set space
  convexHull : Set space
  hullProperty : Prop
  hullPropertyTerm : hullProperty

structure ConvexHullEvidence (C : ConvexHullPackage) where
  hullPropertyClosed : C.hullProperty

def ConvexHullClosed (C : ConvexHullPackage) : Prop :=
  C.hullProperty

theorem convex_hull_closed_from_evidence (C : ConvexHullPackage) (E : ConvexHullEvidence C) :
    ConvexHullClosed C := by
  exact E.hullPropertyClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse