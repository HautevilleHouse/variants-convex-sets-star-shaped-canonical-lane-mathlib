import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure SupportFunction (V : Type) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V]
    [DualSpace V] where
  convexSet : Set V
  convexCondition : convex V convexSet
  support : Dual V → ℝ
  supportCondition : ∀ (l : Dual V), support l = ⨆ x ∈ convexSet, l x

structure SupportFunctionEvidence (V : Type) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V]
    [DualSpace V] (S : SupportFunction V) where
  convexConditionClosed : S.convexCondition
  supportConditionClosed : S.supportCondition

def SupportFunctionClosed (V : Type) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V]
    [DualSpace V] (S : SupportFunction V) : Prop :=
  S.convexCondition ∧ S.supportCondition

theorem support_function_closed_from_evidence (V : Type) [AddCommGroup V] [Module ℝ V]
    [TopologicalSpace V] [DualSpace V] (S : SupportFunction V)
    (E : SupportFunctionEvidence V S) : SupportFunctionClosed V S := by
  exact And.intro E.convexConditionClosed E.supportConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
