import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : NineteenthCenturyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NineteenthCenturyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse