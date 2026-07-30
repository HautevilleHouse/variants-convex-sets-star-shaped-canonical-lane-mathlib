import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure StarShapedSet where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpace : AddCommGroup carrier
  starCenter : carrier
  starProperty : ∀ x : carrier, ∀ t : ℝ, 0 ≤ t ∧ t ≤ 1 → (1 - t) • starCenter + t • x ∈ carrier
  starCenterProperty : starProperty starCenter

def starShapedClosed (S : StarShapedSet) : Prop :=
  ∀ x : S.carrier, ∀ t : ℝ, 0 ≤ t ∧ t ≤ 1 → (1 - t) • S.starCenter + t • x ∈ S.carrier

theorem starShaped_is_closed (S : StarShapedSet) : starShapedClosed S :=
  S.starProperty

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse