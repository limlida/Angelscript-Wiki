### UInputModifier


Base class for building modifiers.

**方法**:

- `FLinearColor GetVisualizationColor(FInputActionValue SampleValue, FInputActionValue FinalValue) const`  
  Helper to allow debug visualization of the modifier.
@param SampleValue - The base input action value pre-modification (ranging -1 -> 1 across all applicable axes).
@param FinalValue - The post-modification input action value for the provided SampleValue.
- `FInputActionValue ModifyRaw(const UEnhancedPlayerInput PlayerInput, FInputActionValue CurrentValue, float DeltaTime)`  
  ModifyRaw
Will be called by each modifier in the modifier chain
@param CurrentValue - The modified value returned by the previous modifier in the chain, or the base raw value if this is the first modifier in the chain.
        // AS FIX(LV): Remove const to work around UHT weirdness because the _Implementation is NOT const

---

