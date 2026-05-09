### FGameplayEffectContextHandle


Handle that wraps a FGameplayEffectContext or subclass, to allow it to be polymorphic and replicate properly

**方法**:

- `AddActors(TArray<AActor> InActors, bool bReset)`
- `AddHitResult(FHitResult InHitResult, bool bReset)`
- `AddInstigator(AActor InInstigator, AActor InEffectCauser)`
- `AddOrigin(FVector InOrigin)`
- `AddSourceObject(UObject NewSourceObject)`
- `Clear()`
- `const UGameplayAbility GetAbility() const`
- `int GetAbilityLevel() const`
- `TArray<AActor> GetActors() const`
- `AActor GetEffectCauser() const`
- `bool GetHitResult(FHitResult& OutHitResult) const`
- `AActor GetInstigator() const`
- `FVector GetOrigin() const`
- `AActor GetOriginalInstigator() const`
- `UAbilitySystemComponent GetOriginalInstigatorAbilitySystemComponent() const`
- `GetOwnedGameplayTags(FGameplayTagContainer& ActorTagContainer, FGameplayTagContainer& SpecTagContainer) const`
- `UObject GetSourceObject() const`
- `bool HasOrigin() const`
- `bool IsLocallyControlled() const`
- `bool IsLocallyControlledPlayer() const`
- `bool IsValid() const`
- `SetAbility(const UGameplayAbility InGameplayAbility)`
- `SetEffectCauser(AActor NewEffectCauser)`
- `FGameplayEffectContextHandle& opAssign(FGameplayEffectContextHandle Other)`

---

