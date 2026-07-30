import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariantsConvexSetsStarShapedCanonicalLaneLean.ConvexSetProperties

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure Hyperplane where
  carrier : Type u
  vectorSpace : AddCommGroup carrier
  linearFunctional : carrier → ℝ
  level : ℝ

def hyperplaneClosed (H : Hyperplane) : Prop :=
  ∀ x : H.carrier, H.linearFunctional x = H.level

structure SeparatingHyperplane (C1 C2 : ConvexSet) where
  hyperplane : Hyperplane
  separationProperty : ∀ x : C1.carrier, hyperplane.linearFunctional x ≤ hyperplane.level ∧ ∀ y : C2.carrier, hyperplane.linearFunctional y ≥ hyperplane.level

def separationClosed (C1 C2 : ConvexSet) (S : SeparatingHyperplane C1 C2) : Prop :=
  (∀ x : C1.carrier, S.hyperplane.linearFunctional x ≤ S.hyperplane.level) ∧ (∀ y : C2.carrier, S.hyperplane.linearFunctional y ≥ S.hyperplane.level)

theorem separation_is_closed (C1 C2 : ConvexSet) (S : SeparatingHyperplane C1 C2) : separationClosed C1 C2 S :=
  S.separationProperty

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse