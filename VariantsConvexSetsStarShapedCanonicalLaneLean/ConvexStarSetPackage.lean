import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ConvexSet (V : Type u) [AddCommGroup V] [Module ℝ V] where
  carrier : Set V
  convex : ∀ (x y : V), x ∈ carrier → y ∈ carrier → ∀ (t : ℝ), 0 ≤ t → t ≤ 1 → (t • x + (1 - t) • y) ∈ carrier

structure StarShapedSet (V : Type u) [AddCommGroup V] [Module ℝ V] where
  carrier : Set V
  center : V
  starShaped : ∀ (x : V), x ∈ carrier → Set.interval (center, x) ⊆ carrier

def convexFromStar (V : Type u) [AddCommGroup V] [Module ℝ V] (S : StarShapedSet V) (h : ∀ (x y : V), x ∈ S.carrier → y ∈ S.carrier → S.center ∈ Set.segment x y) : ConvexSet V :=
  { carrier := S.carrier
    convex := by
      intro x y hx hy t ht0 ht1
      have : S.center ∈ Set.segment x y := h x y hx hy
      -- additional reasoning required
      sorry
  }

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
