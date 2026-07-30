import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ConvexFunctionPackage where
  domain : Set ℝ
  f : ℝ → ℝ
  convexCondition : Prop
  convexConditionTerm : convexCondition

structure ConvexFunctionEvidence (C : ConvexFunctionPackage) where
  convexConditionClosed : C.convexCondition

def ConvexFunctionClosed (C : ConvexFunctionPackage) : Prop :=
  C.convexCondition

theorem convex_function_closed_from_evidence (C : ConvexFunctionPackage) (E : ConvexFunctionEvidence C) :
    ConvexFunctionClosed C := by
  exact E.convexConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse