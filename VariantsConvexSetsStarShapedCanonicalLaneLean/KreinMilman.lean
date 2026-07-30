import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure KreinMilmanTheorem (V : Type) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V]
    [LocallyConvexSpace ℝ V] where
  convexCompactSet : Set V
  convexCompactCondition : convex V convexCompactSet ∧ IsCompact convexCompactSet
  extremePointSet : Set V
  extremePointCondition : ∀ (x : V), x ∈ extremePointSet ↔ IsExtremePoint ℝ convexCompactSet x
  convexHullClosureCondition : convexHull V extremePointSet = convexCompactSet

structure KreinMilmanEvidence (V : Type) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V]
    [LocallyConvexSpace ℝ V] (K : KreinMilmanTheorem V) where
  convexCompactConditionClosed : K.convexCompactCondition
  extremePointConditionClosed : K.extremePointCondition
  convexHullClosureConditionClosed : K.convexHullClosureCondition

def KreinMilmanClosed (V : Type) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V]
    [LocallyConvexSpace ℝ V] (K : KreinMilmanTheorem V) : Prop :=
  K.convexCompactCondition ∧ K.extremePointCondition ∧ K.convexHullClosureCondition

theorem krein_milman_closed_from_evidence (V : Type) [AddCommGroup V] [Module ℝ V]
    [TopologicalSpace V] [LocallyConvexSpace ℝ V] (K : KreinMilmanTheorem V)
    (E : KreinMilmanEvidence V K) : KreinMilmanClosed V K := by
  exact And.intro E.convexCompactConditionClosed
    (And.intro E.extremePointConditionClosed E.convexHullClosureConditionClosed)

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
