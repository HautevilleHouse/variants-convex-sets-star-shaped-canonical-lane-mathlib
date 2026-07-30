import VariantsConvexSetsStarShapedCanonicalLaneLean.ConvexVariants

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure StarShapedDecompositionPackage where
  starCenterSet : Prop
  radialContinuity : Prop
  decompositionClosed : Prop
  kernelClassification : Prop

structure StarShapedDecompositionEvidence (P : StarShapedDecompositionPackage) where
  starCenterSetClosed : P.starCenterSet
  radialContinuityClosed : P.radialContinuity
  decompositionClosedClosed : P.decompositionClosed
  kernelClassificationClosed : P.kernelClassification

def StarShapedDecompositionClosed (P : StarShapedDecompositionPackage) : Prop :=
  P.starCenterSet ∧ P.radialContinuity ∧ P.decompositionClosed ∧ P.kernelClassification

theorem star_shaped_decomposition_closed_from_evidence
    (P : StarShapedDecompositionPackage) (E : StarShapedDecompositionEvidence P) :
    StarShapedDecompositionClosed P := by
  exact And.intro E.starCenterSetClosed
    (And.intro E.radialContinuityClosed
      (And.intro E.decompositionClosedClosed E.kernelClassificationClosed))

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
