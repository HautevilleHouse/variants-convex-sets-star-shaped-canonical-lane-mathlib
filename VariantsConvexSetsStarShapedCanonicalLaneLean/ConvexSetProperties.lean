import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ConvexSet where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpace : AddCommGroup carrier
  convexCombination : ∀ x y : carrier, ∀ t : ℝ, 0 ≤ t ∧ t ≤ 1 → (1 - t) • x + t • y ∈ carrier

def convexCombinationClosed (C : ConvexSet) : Prop :=
  ∀ x y : C.carrier, ∀ t : ℝ, 0 ≤ t ∧ t ≤ 1 → (1 - t) • x + t • y ∈ C.carrier

theorem convexSet_is_closed (C : ConvexSet) : convexCombinationClosed C :=
  C.convexCombination

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse