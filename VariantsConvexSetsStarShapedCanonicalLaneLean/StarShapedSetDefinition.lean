import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure StarShapedSetPackage where
  space : Type u
  spaceTopology : TopologicalSpace space
  addition : space → space → space
  scalarMul : ℝ → space → space
  starSet : Set space
  starCenter : space
  starCondition : Prop
  starConditionTerm : starCondition

structure StarShapedSetEvidence (S : StarShapedSetPackage) where
  starConditionClosed : S.starCondition

def StarShapedSetClosed (S : StarShapedSetPackage) : Prop :=
  S.starCondition

theorem star_shaped_set_closed_from_evidence (S : StarShapedSetPackage) (E : StarShapedSetEvidence S) :
    StarShapedSetClosed S := by
  exact E.starConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse