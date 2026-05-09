### FGameplayEffectCue


FGameplayEffectCue
    This is a cosmetic cue that can be tied to a UGameplayEffect.
 This is essentially a GameplayTag + a Min/Max level range that is used to map the level of a GameplayEffect to a normalized value used by the GameplayCue system.

**属性**:

- `FGameplayTagContainer GameplayCueTags [Tags passed to the gameplay cue handler when this cue is activated]`
- `FGameplayAttribute MagnitudeAttribute [The attribute to use as the source for cue magnitude. If none use level]`
- `float32 MaxLevel [The maximum level that this Cue supports]`
- `float32 MinLevel [The minimum level that this Cue supports]`


**方法**:

- `FGameplayEffectCue& opAssign(FGameplayEffectCue Other)`

---

