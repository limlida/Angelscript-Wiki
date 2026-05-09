### FAttributeBasedFloat


Struct representing a float whose magnitude is dictated by a backing attribute and a calculation policy, follows basic form of:
(Coefficient * (PreMultiplyAdditiveValue + [Eval'd Attribute Value According to Policy])) + PostMultiplyAdditiveValue

**属性**:

- `EAttributeBasedFloatCalculationType AttributeCalculationType [Calculation policy in regards to the attribute]`
- `FCurveTableRowHandle AttributeCurve [If a curve table entry is specified, the attribute will be used as a lookup into the curve instead of using the attribute directly.]`
- `FGameplayEffectAttributeCaptureDefinition BackingAttribute [Attribute backing the calculation]`
- `FScalableFloat Coefficient [Coefficient to the attribute calculation]`
- `EGameplayModEvaluationChannel FinalChannel [Channel to terminate evaluation on when using AttributeEvaluatedUpToChannel calculation type]`
- `FScalableFloat PostMultiplyAdditiveValue [Additive value to the attribute calculation, added in after the coefficient applies]`
- `FScalableFloat PreMultiplyAdditiveValue [Additive value to the attribute calculation, added in before the coefficient applies]`
- `FGameplayTagContainer SourceTagFilter [Filter to use on source tags; If specified, only modifiers applied with all of these tags will factor into the calculation]`
- `FGameplayTagContainer TargetTagFilter [Filter to use on target tags; If specified, only modifiers applied with all of these tags will factor into the calculation]`


**方法**:

- `FAttributeBasedFloat& opAssign(FAttributeBasedFloat Other)`

---

