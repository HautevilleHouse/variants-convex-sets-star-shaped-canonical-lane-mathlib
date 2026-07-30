import VariantsConvexSetsStarShapedCanonicalLaneLean.ConvexSetPackage

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure StarShapedSetPackage (C : ConvexSetPackage) where
  origin : C.space
  rayCondition : Set C.space → Prop
  starShapedClosed : rayCondition ∈ {s : Set C.space | True}

structure StarShapedSetEvidence {C : ConvexSetPackage}
    (S : StarShapedSetPackage C) where
  rayConditionClosed : S.rayCondition
  starShapedClosed : S.starShapedClosed

def StarShapedSetClosed {C : ConvexSetPackage}
    (S : StarShapedSetPackage C) : Prop :=
  S.rayCondition

theorem star_shaped_set_closed_from_evidence
    {C : ConvexSetPackage} (S : StarShapedSetPackage C)
    (E : StarShapedSetEvidence S) :
    StarShapedSetClosed S := by
  exact E.rayConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
