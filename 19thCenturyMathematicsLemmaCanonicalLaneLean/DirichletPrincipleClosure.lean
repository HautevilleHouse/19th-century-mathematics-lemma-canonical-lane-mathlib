import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

structure DirichletPrinciplePackage where
  domain : Set ℝ²
  boundaryData : ℝ² → ℝ
  harmonicExtension : ℝ² → ℝ
  existsSolution : Prop
  minimizesDirichletEnergy : Prop
  energyFunctional : (ℝ² → ℝ) → ℝ

structure DirichletPrincipleEvidence (D : DirichletPrinciplePackage) where
  existsSolutionClosed : D.existsSolution
  minimizesDirichletEnergyClosed : D.minimizesDirichletEnergy

def DirichletPrincipleClosed (D : DirichletPrinciplePackage) : Prop :=
  D.existsSolution ∧ D.minimizesDirichletEnergy

theorem dirichlet_principle_closed_from_evidence (D : DirichletPrinciplePackage) (E : DirichletPrincipleEvidence D) :
    DirichletPrincipleClosed D := by
  exact And.intro E.existsSolutionClosed E.minimizesDirichletEnergyClosed

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse