### UAdditionalEffectsGameplayEffectComponent


Add additional Gameplay Effects that attempt to activate under certain conditions (or no conditions)

**属性**:

- `TArray<FConditionalGameplayEffect> OnApplicationGameplayEffects [Other gameplay effects that will be applied to the target of this effect if the owning effect applies]`
- `TArray<TSubclassOf<UGameplayEffect>> OnCompleteAlways [Effects to apply when this effect completes, regardless of how it ends]`
- `TArray<TSubclassOf<UGameplayEffect>> OnCompleteNormal [Effects to apply when this effect expires naturally via its duration]`
- `TArray<TSubclassOf<UGameplayEffect>> OnCompletePrematurely [Effects to apply when this effect is made to expire prematurely (e.g. via a forced removal, clear tags, etc.)]`
- `bool bOnApplicationCopyDataFromOriginalSpec [This will copy all of the data (e.g. SetByCallerMagnitudes) from the GESpec that Applied this GameplayEffect to the new OnApplicationGameplayEffect Specs.
One would think this is normally desirable (and how OnComplete works by default), but we default to false here for backwards compatability.]`

---

