import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse