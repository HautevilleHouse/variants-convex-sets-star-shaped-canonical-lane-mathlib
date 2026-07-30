import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariantsConvexSetsStarShapedCanonicalLaneLean.ConvexStarSetPackage

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

theorem extremePointNonempty (V : Type u) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V] [LocallyConvexSpace ℝ V] (K : Set V)
    (hK : Convex ℝ K) (hKComp : IsCompact K) (hKNonempty : K.Nonempty) : (extremePoints ℝ K).Nonempty := by
  sorry

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
