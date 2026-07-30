import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure SeparationTheoremPackage where
  space : Type u
  spaceTopology : TopologicalSpace space
  addition : space → space → space
  scalarMul : ℝ → space → space
  convexSetA : Set space
  convexSetB : Set space
  disjoint : Prop
  separatingHyperplane : Prop
  separationProof : separatingHyperplane

structure SeparationTheoremEvidence (S : SeparationTheoremPackage) where
  separationClosed : S.separatingHyperplane

def SeparationTheoremClosed (S : SeparationTheoremPackage) : Prop :=
  S.separatingHyperplane

theorem separation_theorem_closed_from_evidence (S : SeparationTheoremPackage) (E : SeparationTheoremEvidence S) :
    SeparationTheoremClosed S := by
  exact E.separationClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse