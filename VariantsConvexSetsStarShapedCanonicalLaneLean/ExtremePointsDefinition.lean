import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ExtremePointPackage where
  space : Type u
  spaceTopology : TopologicalSpace space
  addition : space → space → space
  scalarMul : ℝ → space → space
  convexSet : Set space
  extremePoint : space
  extremeCondition : Prop
  extremeConditionTerm : extremeCondition

structure ExtremePointEvidence (E : ExtremePointPackage) where
  extremeConditionClosed : E.extremeCondition

def ExtremePointClosed (E : ExtremePointPackage) : Prop :=
  E.extremeCondition

theorem extreme_point_closed_from_evidence (E : ExtremePointPackage) (Ev : ExtremePointEvidence E) :
    ExtremePointClosed E := by
  exact Ev.extremeConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse