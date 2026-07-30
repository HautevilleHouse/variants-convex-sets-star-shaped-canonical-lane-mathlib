import VariantsConvexSetsStarShapedCanonicalLaneLean.StarShapedSetPackage

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure RadialKernelPackage {C : ConvexSetPackage}
    (S : StarShapedSetPackage C) where
  radialKernel : Set C.space
  radialCondition : Prop
  radialClosed : radialCondition

structure RadialKernelEvidence {C : ConvexSetPackage}
    {S : StarShapedSetPackage C} (R : RadialKernelPackage S) where
  radialConditionClosed : R.radialCondition
  radialClosed : R.radialClosed

def RadialKernelClosed {C : ConvexSetPackage}
    {S : StarShapedSetPackage C} (R : RadialKernelPackage S) : Prop :=
  R.radialCondition

theorem radial_kernel_closed_from_evidence
    {C : ConvexSetPackage} {S : StarShapedSetPackage C}
    (R : RadialKernelPackage S) (E : RadialKernelEvidence R) :
    RadialKernelClosed R := by
  exact E.radialConditionClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
