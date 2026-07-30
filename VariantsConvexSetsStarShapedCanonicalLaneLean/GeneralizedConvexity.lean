import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariantsConvexSetsStarShapedCanonicalLaneLean.ConvexSetProperties

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure MSun where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpace : AddCommGroup carrier
  baseSet : ConvexSet
  msunProperty : ∀ x : carrier, ∃ (a : ℝ) (b : carrier), b ∈ baseSet.carrier ∧ x = a • b

def msunClosed (M : MSun) : Prop :=
  ∀ x : M.carrier, ∃ (a : ℝ) (b : M.carrier), b ∈ M.baseSet.carrier ∧ x = a • b

theorem msun_is_closed (M : MSun) : msunClosed M :=
  M.msunProperty

structure ConvexCone where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpace : AddCommGroup carrier
  coneProperty : ∀ x : carrier, ∀ λ : ℝ, λ ≥ 0 → λ • x ∈ carrier
  convexConeProperty : ∀ x y : carrier, x + y ∈ carrier

def coneClosed (C : ConvexCone) : Prop :=
  (∀ x : C.carrier, ∀ λ : ℝ, λ ≥ 0 → λ • x ∈ C.carrier) ∧ (∀ x y : C.carrier, x + y ∈ C.carrier)

theorem cone_is_closed (C : ConvexCone) : coneClosed C :=
  And.intro C.coneProperty C.convexConeProperty

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse