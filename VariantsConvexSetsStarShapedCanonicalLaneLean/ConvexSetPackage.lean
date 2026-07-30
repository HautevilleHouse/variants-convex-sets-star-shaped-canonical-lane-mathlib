import VariantsConvexSetsStarShapedCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ConvexSetPackage where
  space : Type u
  addition : space → space → space
  scalarMul : ℝ → space → space
  convexCondition : Set space → Prop
  convexClosed : convexCondition ∈ {s : Set space | True}

structure ConvexSetEvidence (C : ConvexSetPackage) where
  convexConditionClosed : C.convexCondition
  convexClosed : C.convexClosed

def ConvexSetClosed (C : ConvexSetPackage) : Prop :=
  C.convexCondition

theorem convex_set_closed_from_evidence
    (C : ConvexSetPackage) (E : ConvexSetEvidence C) :
    ConvexSetClosed C := by
  exact E.convexConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
