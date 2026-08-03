import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

structure BolzanoWeierstrassPackage where
  boundedSequence : ℕ → ℝ
  bounded : Prop
  convergentSubsequence : Prop
  subsequenceExists : ∃ (φ : ℕ → ℕ) (strict : ∀ n, φ n < φ (n+1)),
    ∀ ε > 0, ∃ N, ∀ n ≥ N, |boundedSequence (φ n) - _| < ε
  limitPoint : ℝ

structure BolzanoWeierstrassEvidence (B : BolzanoWeierstrassPackage) where
  boundedClosed : B.bounded
  convergentSubsequenceClosed : B.convergentSubsequence

def BolzanoWeierstrassClosed (B : BolzanoWeierstrassPackage) : Prop :=
  B.bounded ∧ B.convergentSubsequence

theorem bolzano_weierstrass_closed_from_evidence (B : BolzanoWeierstrassPackage) (E : BolzanoWeierstrassEvidence B) :
    BolzanoWeierstrassClosed B := by
  exact And.intro E.boundedClosed E.convergentSubsequenceClosed

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse