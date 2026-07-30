import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ConvexSet (V : Type) [Add V] [SMul ℝ V] where
  carrier : Set V
  convexCondition : ∀ (x y : V), x ∈ carrier → y ∈ carrier →
    ∀ (t : ℝ), 0 ≤ t ∧ t ≤ 1 → ((1 - t) • x + t • y) ∈ carrier

def convex (V : Type) [Add V] [SMul ℝ V] (S : Set V) : Prop :=
  ∀ (x y : V), x ∈ S → y ∈ S → ∀ (t : ℝ), 0 ≤ t ∧ t ≤ 1 → ((1 - t) • x + t • y) ∈ S

structure ConvexEvidence (V : Type) [Add V] [SMul ℝ V] (C : ConvexSet V) where
  convexConditionClosed : C.convexCondition

def ConvexClosed (V : Type) [Add V] [SMul ℝ V] (C : ConvexSet V) : Prop :=
  C.convexCondition

theorem convex_closed_from_evidence (V : Type) [Add V] [SMul ℝ V]
    (C : ConvexSet V) (E : ConvexEvidence V C) : ConvexClosed V C := by
  exact E.convexConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
