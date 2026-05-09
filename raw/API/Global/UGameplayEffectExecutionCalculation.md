### UGameplayEffectExecutionCalculation


**属性**:

- `TArray<FGameplayEffectAttributeCaptureDefinition> InvalidScopedModifierAttributes [Any attribute in this list will not show up as a valid option for scoped modifiers; Used to allow attribute capture for internal calculation while preventing modification]`
- `FGameplayTagContainer ValidTransientAggregatorIdentifiers [Any tag in this container will show up as a valid "temporary variable" for scoped modifiers; Used to allow for data-driven variable support that doesn't rely on scoped modifiers]`
- `bool bRequiresPassedInTags [Used to indicate if this execution uses Passed In Tags]`


**方法**:

- `Execute(FGameplayEffectCustomExecutionParameters ExecutionParams, FGameplayEffectCustomExecutionOutput& OutExecutionOutput) const`  
  Called whenever the owning gameplay effect is executed. Allowed to do essentially whatever is desired, including generating new
modifiers to instantly execute as well.

@note: Native subclasses should override the auto-generated Execute_Implementation function and NOT this one.

@param ExecutionParams               Parameters for the custom execution calculation
@param OutExecutionOutput    [OUT] Output data populated by the execution detailing further behavior or results of the execution

---

