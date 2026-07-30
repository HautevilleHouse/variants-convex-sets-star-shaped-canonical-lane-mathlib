import VariantsConvexSetsStarShapedCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure ConvexVariantsPackage where
  convexSetsFamily : Type u
  starShapedFamily : Type v
  convexStarInclusion : Prop
  dualityPairing : Prop
  extremePointsClassified : Prop

structure ConvexVariantsEvidence (P : ConvexVariantsPackage) where
  convexStarInclusionClosed : P.convexStarInclusion
  dualityPairingClosed : P.dualityPairing
  extremePointsClassifiedClosed : P.extremePointsClassified

def ConvexVariantsClosed (P : ConvexVariantsPackage) : Prop :=
  P.convexStarInclusion ∧ P.dualityPairing ∧ P.extremePointsClassified

theorem convex_variants_closed_from_evidence (P : ConvexVariantsPackage)
    (E : ConvexVariantsEvidence P) : ConvexVariantsClosed P := by
  exact And.intro E.convexStarInclusionClosed
    (And.intro E.dualityPairingClosed E.extremePointsClassifiedClosed)

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
