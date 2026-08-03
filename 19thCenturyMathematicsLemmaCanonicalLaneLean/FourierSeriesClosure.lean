import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace 19thCenturyMathematicsLemmaCanonicalLaneLean

structure FourierSeriesPackage where
  function : ℝ → ℝ
  periodic : Prop
  fourierCoefficients : ℕ → ℂ
  seriesConverges : Prop
  pointwiseLimit : ℝ → ℝ
  convergenceType : String -- "pointwise", "uniform", "L2"

structure FourierSeriesEvidence (F : FourierSeriesPackage) where
  periodicClosed : F.periodic
  seriesConvergesClosed : F.seriesConverges

def FourierSeriesClosed (F : FourierSeriesPackage) : Prop :=
  F.periodic ∧ F.seriesConverges

theorem fourier_series_closed_from_evidence (F : FourierSeriesPackage) (E : FourierSeriesEvidence F) :
    FourierSeriesClosed F := by
  exact And.intro E.periodicClosed E.seriesConvergesClosed

end 19thCenturyMathematicsLemmaCanonicalLaneLean
end HautevilleHouse