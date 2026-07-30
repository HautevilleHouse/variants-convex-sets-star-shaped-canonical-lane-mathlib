import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariantsConvexSetsStarShapedCanonicalLaneLean.ConvexStarSetPackage

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

theorem carathéodory (V : Type u) [AddCommGroup V] [Module ℝ V] [FiniteDimensional ℝ V] (X : Set V) (x : V) (hx : x ∈ convexHull ℝ X) :
    ∃ (S : Set V), S ⊆ X ∧ S.Finite ∧ S.card ≤ dim V + 1 ∧ x ∈ convexHull ℝ S := by
  sorry

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
