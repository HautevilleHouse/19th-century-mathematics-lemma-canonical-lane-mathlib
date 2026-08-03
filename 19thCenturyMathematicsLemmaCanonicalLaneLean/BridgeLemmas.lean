import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NineteenthCenturyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse