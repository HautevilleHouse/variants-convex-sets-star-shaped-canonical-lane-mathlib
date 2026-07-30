import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariantsConvexSetsStarShapedCanonicalLaneLean.StarShapedStructure
import HautevilleHouse.VariantsConvexSetsStarShapedCanonicalLaneLean.ConvexSetProperties

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

theorem starShaped_is_convex_with_center (S : StarShapedSet) (center : S.carrier) :
    (∀ x : S.carrier, ∀ t : ℝ, 0 ≤ t ∧ t ≤ 1 → (1 - t) • center + t • x ∈ S.carrier) := by
  intro x t h
  exact S.starProperty x t h

structure StarConvexBridge (A : AdmissibleClass) where
  starSet : StarShapedSet
  convexSet : ConvexSet
  containment : ∀ x : starSet.carrier, x ∈ convexSet.carrier
  bridgeProperty : starShapedClosed starSet ∧ convexCombinationClosed convexSet

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ (S : StarShapedSet) (C : ConvexSet), (∀ x : S.carrier, x ∈ C.carrier) → starShapedClosed S ∧ convexCombinationClosed C

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  intro S C h
  exact And.intro (starShaped_is_closed S) (convexSet_is_closed C)

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse