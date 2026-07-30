import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure StarShapedSet (V : Type) [Add V] [SMul ℝ V] where
  carrier : Set V
  starCenter : V
  starCondition : ∀ (x : V), x ∈ carrier → ∀ (t : ℝ), t ∈ Set.Icc (0 : ℝ) 1 →
    ((1 - t) • starCenter + t • x) ∈ carrier

def star_convex (V : Type) [Add V] [SMul ℝ V] (S : Set V) (a : V) : Prop :=
  ∀ (x : V), x ∈ S → ∀ (t : ℝ), 0 ≤ t ∧ t ≤ 1 → ((1 - t) • a + t • x) ∈ S

structure StarShapedEvidence (V : Type) [Add V] [SMul ℝ V] (S : StarShapedSet V) where
  starConditionClosed : S.starCondition

def StarShapedClosed (V : Type) [Add V] [SMul ℝ V] (S : StarShapedSet V) : Prop :=
  S.starCondition

theorem star_shaped_closed_from_evidence (V : Type) [Add V] [SMul ℝ V]
    (S : StarShapedSet V) (E : StarShapedEvidence V S) : StarShapedClosed V S := by
  exact E.starConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
