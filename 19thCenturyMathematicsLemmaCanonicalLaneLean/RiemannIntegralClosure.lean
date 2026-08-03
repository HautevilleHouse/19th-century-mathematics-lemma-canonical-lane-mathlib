import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

structure RiemannIntegralPackage where
  function : ℝ → ℝ
  interval : ℝ × ℝ
  partition : List ℝ
  upperSum : ℝ
  lowerSum : ℝ
  integrable : Prop
  integralValue : ℝ
  darbouxCondition : ∀ ε > 0, ∃ P, upperSum - lowerSum < ε

structure RiemannIntegralEvidence (R : RiemannIntegralPackage) where
  integrableClosed : R.integrable
  integralValueClosed : R.integrable → R.integralValue = (R.upperSum + R.lowerSum) / 2

def RiemannIntegralClosed (R : RiemannIntegralPackage) : Prop :=
  R.integrable

theorem riemann_integral_closed_from_evidence (R : RiemannIntegralPackage) (E : RiemannIntegralEvidence R) :
    RiemannIntegralClosed R := by
  exact E.integrableClosed

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse