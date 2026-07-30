import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariantsConvexSetsStarShapedCanonicalLaneLean.ConvexStarSetPackage

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

theorem hellyTheorem (V : Type u) [AddCommGroup V] [Module ℝ V] [FiniteDimensional ℝ V] (F : Set (Set V))
    (hF : F.Finite) (hConvex : ∀ S ∈ F, Convex ℝ S) (hIntersection : ∀ G : Set (Set V), G ⊆ F → G.Finite → G.card ≤ dim V + 1 → (⋂ S ∈ G, S).Nonempty) :
    (⋂ S ∈ F, S).Nonempty := by
  sorry

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
