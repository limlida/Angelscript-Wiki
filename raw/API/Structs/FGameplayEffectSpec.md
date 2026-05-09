### FGameplayEffectSpec


GameplayEffect Specification. Tells us:
    -What UGameplayEffect (const data)
    -What Level
 -Who instigated

FGameplayEffectSpec is modifiable. We start with initial conditions and modifications be applied to it. In this sense, it is stateful/mutable but it
is still distinct from an FActiveGameplayEffect which in an applied instance of an FGameplayEffectSpec.

**属性**:

- `const UGameplayEffect Def`
- `TMap<FName,float32> SetByCallerNameMagnitudes`
- `TMap<FGameplayTag,float32> SetByCallerTagMagnitudes`


**方法**:

- `AddDynamicAssetTag(FGameplayTag TagToAdd)`
- `AppendDynamicAssetTags(FGameplayTagContainer ContainerToAdd)`
- `ApplyExecutorModifiersForDefinition(UClass CalculationClass, FGameplayEffectAttributeCaptureDefinition InCaptureDef, float32& ValueToModify)`
- `float32 CalculateModifiedDuration() const`  
  Helper function that returns the duration after applying relevant modifiers from the source and target ability system components
- `CalculateModifierMagnitudes()`  
  Fills out the modifier magnitudes inside the Modifier Specs
- `CaptureAttributeDataFromTarget(UAbilitySystemComponent TargetAbilitySystemComponent)`
- `FGameplayTagContainer GetAllAssetTags() const`
- `FGameplayTagContainer GetAllGrantedTags() const`
- `FAngelscriptTagContainerAggregator GetCapturedSourceTags() const`
- `FAngelscriptTagContainerAggregator GetCapturedTargetTags() const`
- `int GetCompletedSourceAttributeCapture() const`
- `int GetCompletedTargetAttributeCapture() const`
- `FGameplayEffectContextHandle GetContext() const`
- `float32 GetDuration() const`
- `int GetDurationLocked() const`
- `FGameplayTagContainer GetDynamicAssetTags() const`
- `FGameplayTagContainer GetDynamicGrantedTags() const`
- `float32 GetLevel() const`
- `float32 GetModifiedAttributeMagnitude(FGameplayAttribute Attribute) const`
- `float32 GetModifierMagnitude(int ModifierIdx, bool bFactorInStackCount) const`
- `float32 GetPeriod() const`
- `float32 GetSetByCallerMagnitude(FGameplayTag DataTag, bool bWarnIfNotFound = true, float32 DefaultIfNotFound = 0.000000) const`
- `int GetStackCount() const`
- `PrintAll() const`
- `RecaptureAttributeDataForClone(UAbilitySystemComponent OriginalASC, UAbilitySystemComponent NewASC)`  
  Recapture attributes from source and target for cloning
- `RecaptureSourceActorTags()`  
  Recaptures source actor tags of this spec without modifying anything else
- `SetByCallerMagnitude(FGameplayTag DataTag, float32 Magnitude)`
- `SetContext(FGameplayEffectContextHandle NewEffectContextHandle)`
- `SetLevel(float32 InLevel)`
- `SetupAttributeCaptureDefinitions()`  
  Helper function to initialize all of the capture definitions required by the spec
- `FString ToSimpleString() const`
- `float32 GetSetByCallerMagnitude(FName DataName, bool bWarnIfNotFound = true, float32 DefaultIfNotFound = 0.000000) const`
- `FGameplayEffectSpec& opAssign(FGameplayEffectSpec Other)`

---

