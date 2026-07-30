import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "VariantsConvexSetsStarShapedCanonicalLaneLean",
    theoremName := "ConvexSetsStarShapedTheorem",
    theoremObject := "Variants Convex Sets Star Shaped",
    classicalBoundary := "carried outside statement",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized",
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary carried by formalization"
  }

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
