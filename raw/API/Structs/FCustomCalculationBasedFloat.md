### FCustomCalculationBasedFloat


Structure to encapsulate magnitudes that are calculated via custom calculation

**属性**:

- `TSubclassOf<UGameplayModMagnitudeCalculation> CalculationClassMagnitude []`
- `FScalableFloat Coefficient [Coefficient to the custom calculation]`
- `FCurveTableRowHandle FinalLookupCurve [If a curve table entry is specified, the OUTPUT of this custom class magnitude (including the pre and post additive values) lookup into the curve instead of using the attribute directly.]`
- `FScalableFloat PostMultiplyAdditiveValue [Additive value to the attribute calculation, added in after the coefficient applies]`
- `FScalableFloat PreMultiplyAdditiveValue [Additive value to the attribute calculation, added in before the coefficient applies]`


**方法**:

- `FCustomCalculationBasedFloat& opAssign(FCustomCalculationBasedFloat Other)`

---

