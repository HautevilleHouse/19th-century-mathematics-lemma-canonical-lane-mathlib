import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

structure CauchySequencePackage where
  sequence : ℕ → ℝ
  isCauchy : Prop
  limitExists : Prop
  limitValue : ℝ
  cauchyCondition : ∀ ε > 0, ∃ N, ∀ m n ≥ N, |sequence m - sequence n| < ε
  limitCondition : limitExists → (∀ ε > 0, ∃ N, ∀ n ≥ N, |sequence n - limitValue| < ε)

structure CauchySequenceEvidence (C : CauchySequencePackage) where
  isCauchyClosed : C.isCauchy
  limitExistsClosed : C.limitExists
  limitValueClosed : C.limitExists → C.limitCondition C.limitExists

def CauchySequenceClosed (C : CauchySequencePackage) : Prop :=
  C.isCauchy ∧ C.limitExists

theorem cauchy_sequence_closed_from_evidence (C : CauchySequencePackage) (E : CauchySequenceEvidence C) :
    CauchySequenceClosed C := by
  exact And.intro E.isCauchyClosed E.limitExistsClosed

def bridgeFromCauchy (A : AdmissibleClass) : Prop :=
  match A.object with
  | CauchyObject cauchy => cauchy.isCauchy
  | _ => False

lemma cauchy_bridge_from_admissible (A : AdmissibleClass) (h : ∃ (C : CauchySequencePackage), A.object = CauchyObject C) :
    bridgeClosed A := by
  rcases h with ⟨C, h_eq⟩
  subst h_eq
  exact C.isCauchy

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse