### UTargetTagRequirementsGameplayEffectComponent


Specifies tag requirements that the Target (owner of the Gameplay Effect) must have if this GE should apply or continue to execute

**属性**:

- `FGameplayTagRequirements ApplicationTagRequirements [Tag requirements the target must have for this GameplayEffect to be applied. This is pass/fail at the time of application. If fail, this GE fails to apply.]`
- `FGameplayTagRequirements OngoingTagRequirements [Once Applied, these tags requirements are used to determined if the GameplayEffect is "on" or "off". A GameplayEffect can be off and do nothing, but still applied.]`
- `FGameplayTagRequirements RemovalTagRequirements [Tag requirements that if met will remove this effect. Also prevents effect application.]`

---

