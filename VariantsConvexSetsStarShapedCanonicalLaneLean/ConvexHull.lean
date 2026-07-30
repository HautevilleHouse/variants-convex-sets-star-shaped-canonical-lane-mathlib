import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ConvexHull (V : Type) [Add V] [SMul ℝ V] [AddCommGroup V] [Module ℝ V] where
  points : Set V
  hull : Set V
  convexHullCondition : convex V hull ∧ hull ⊇ points
  minimalityCondition : ∀ (S : Set V), convex V S ∧ S ⊇ points → hull ⊆ S

def convexHull (V : Type) [AddCommGroup V] [Module ℝ V] (S : Set V) : Set V :=
  { x | ∃ (n : ℕ) (f : Fin n → V) (w : Fin n → ℝ), (∀ i, 0 ≤ w i) ∧ (∑ i, w i = 1) ∧
    (∀ i, f i ∈ S) ∧ x = ∑ i, w i • f i }

structure ConvexHullEvidence (V : Type) [AddCommGroup V] [Module ℝ V] (H : ConvexHull V) where
  convexHullConditionClosed : H.convexHullCondition
  minimalityConditionClosed : H.minimalityCondition

def ConvexHullClosed (V : Type) [AddCommGroup V] [Module ℝ V] (H : ConvexHull V) : Prop :=
  H.convexHullCondition ∧ H.minimalityCondition

theorem convexHull_closed_from_evidence (V : Type) [AddCommGroup V] [Module ℝ V]
    (H : ConvexHull V) (E : ConvexHullEvidence V H) : ConvexHullClosed V H := by
  exact And.intro E.convexHullConditionClosed E.minimalityConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
