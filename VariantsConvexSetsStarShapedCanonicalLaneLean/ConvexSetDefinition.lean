import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ConvexSetPackage where
  space : Type u
  spaceTopology : TopologicalSpace space
  addition : space → space → space
  scalarMul : ℝ → space → space
  convexSet : Set space
  convexCondition : Prop
  convexConditionTerm : convexCondition

structure ConvexSetEvidence (C : ConvexSetPackage) where
  convexConditionClosed : C.convexCondition

def ConvexSetClosed (C : ConvexSetPackage) : Prop :=
  C.convexCondition

theorem convex_set_closed_from_evidence (C : ConvexSetPackage) (E : ConvexSetEvidence C) :
    ConvexSetClosed C := by
  exact E.convexConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse