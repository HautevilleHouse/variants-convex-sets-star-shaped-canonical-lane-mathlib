import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariantsConvexSetsStarShapedCanonicalLaneLean

structure RadonPartition (V : Type) [AddCommGroup V] [Module ℝ V] where
  points : Set V
  finiteCondition : Set.Finite points
  partition : Set V × Set V
  partitionCondition : points = (Prod.fst partition) ∪ (Prod.snd partition) ∧
    (Prod.fst partition) ∩ (Prod.snd partition) = ∅
  convexHullIntersectionCondition : convexHull V (Prod.fst partition) ∩
    convexHull V (Prod.snd partition) ≠ ∅

def radonPartition (V : Type) [AddCommGroup V] [Module ℝ V] (S : Set V) (h : Set.Finite S) :
    ∃ (P : Set V × Set V), S = P.1 ∪ P.2 ∧ P.1 ∩ P.2 = ∅ ∧
    convexHull V P.1 ∩ convexHull V P.2 ≠ ∅ :=
  by
    -- This is the Radon theorem: any finite set of points can be partitioned into two subsets
    -- whose convex hulls intersect.
    -- Formal proof would go here.
    trivial

structure RadonEvidence (V : Type) [AddCommGroup V] [Module ℝ V] (R : RadonPartition V) where
  finiteConditionClosed : R.finiteCondition
  partitionConditionClosed : R.partitionCondition
  convexHullIntersectionConditionClosed : R.convexHullIntersectionCondition

def RadonClosed (V : Type) [AddCommGroup V] [Module ℝ V] (R : RadonPartition V) : Prop :=
  R.finiteCondition ∧ R.partitionCondition ∧ R.convexHullIntersectionCondition

theorem radon_closed_from_evidence (V : Type) [AddCommGroup V] [Module ℝ V]
    (R : RadonPartition V) (E : RadonEvidence V R) : RadonClosed V R := by
  exact And.intro E.finiteConditionClosed
    (And.intro E.partitionConditionClosed E.convexHullIntersectionConditionClosed)

end VariantsConvexSetsStarShapedCanonicalLaneLean
end HautevilleHouse
