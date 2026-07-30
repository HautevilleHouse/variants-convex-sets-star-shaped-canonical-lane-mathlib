import VariantsConvexSetsStarShapedCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.starClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.starClosed

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
