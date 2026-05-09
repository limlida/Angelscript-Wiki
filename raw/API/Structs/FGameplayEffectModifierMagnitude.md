### FGameplayEffectModifierMagnitude


Struct representing the magnitude of a gameplay effect modifier, potentially calculated in numerous different ways

**属性**:

- `FAttributeBasedFloat AttributeBasedMagnitude [Magnitude value represented by an attribute-based float
      (Coefficient * (PreMultiplyAdditiveValue + [Eval'd Attribute Value According to Policy])) + PostMultiplyAdditiveValue]`
- `FCustomCalculationBasedFloat CustomMagnitude [Magnitude value represented by a custom calculation class]`
- `EGameplayEffectMagnitudeCalculation MagnitudeCalculationType [Type of calculation to perform to derive the magnitude]`
- `FScalableFloat ScalableFloatMagnitude [Magnitude value represented by a scalable float]`
- `FSetByCallerFloat SetByCallerMagnitude [Magnitude value represented by a SetByCaller magnitude]`


**方法**:

- `FGameplayEffectModifierMagnitude& opAssign(FGameplayEffectModifierMagnitude Other)`

---

