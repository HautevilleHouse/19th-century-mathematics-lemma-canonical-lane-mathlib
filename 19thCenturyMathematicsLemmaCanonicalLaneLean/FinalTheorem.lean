import canonicalLaneMathlib.AdmissibleClass
import 19thCenturyMathematicsLemmaCanonicalLaneLean.BridgeLemmas
import 19thCenturyMathematicsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

def Constrained19thCenturyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_19th_century_endgame (A : AdmissibleClass) :
    Constrained19thCenturyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse