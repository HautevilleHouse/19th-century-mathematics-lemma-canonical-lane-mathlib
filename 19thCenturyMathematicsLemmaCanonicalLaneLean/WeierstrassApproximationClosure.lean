import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

structure WeierstrassApproximationPackage where
  continuousFunction : ℝ → ℝ
  interval : ℝ × ℝ
  polynomialApprox : ℕ → ℝ → ℝ
  uniformConvergence : Prop
  errorBound : ℕ → ℝ
  bernsteinPolynomials : ℕ → ℝ → ℝ → ℝ

structure WeierstrassApproximationEvidence (W : WeierstrassApproximationPackage) where
  uniformConvergenceClosed : W.uniformConvergence
  errorBoundClosed : ∀ n : ℕ, W.errorBound n > 0

def WeierstrassApproximationClosed (W : WeierstrassApproximationPackage) : Prop :=
  W.uniformConvergence

theorem weierstrass_approximation_closed_from_evidence (W : WeierstrassApproximationPackage) (E : WeierstrassApproximationEvidence W) :
    WeierstrassApproximationClosed W := by
  exact E.uniformConvergenceClosed

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse