import VariantsConvexSetsStarShapedCanonicalLaneLean.StarShapedDecomposition

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure SupportFunctionPackage where
  supportFunctionDefined : Prop
  convexDuality : Prop
  starShapedDuality : Prop
  polarityPairing : Prop

structure SupportFunctionEvidence (P : SupportFunctionPackage) where
  supportFunctionDefinedClosed : P.supportFunctionDefined
  convexDualityClosed : P.convexDuality
  starShapedDualityClosed : P.starShapedDuality
  polarityPairingClosed : P.polarityPairing

def SupportFunctionClosed (P : SupportFunctionPackage) : Prop :=
  P.supportFunctionDefined ∧ P.convexDuality ∧ P.starShapedDuality ∧ P.polarityPairing

theorem support_function_closed_from_evidence (P : SupportFunctionPackage)
    (E : SupportFunctionEvidence P) : SupportFunctionClosed P := by
  exact And.intro E.supportFunctionDefinedClosed
    (And.intro E.convexDualityClosed
      (And.intro E.starShapedDualityClosed E.polarityPairingClosed))

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
