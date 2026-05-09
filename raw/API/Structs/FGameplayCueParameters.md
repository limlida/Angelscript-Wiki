### FGameplayCueParameters


Metadata about a gameplay cue execution

**属性**:

- `int AbilityLevel [If originating from an ability, this will be the level of that ability]`
- `FGameplayTagContainer AggregatedSourceTags [The aggregated source tags taken from the effect spec]`
- `FGameplayTagContainer AggregatedTargetTags [The aggregated target tags taken from the effect spec]`
- `TWeakObjectPtr<AActor> EffectCauser [The physical actor that actually did the damage, can be a weapon or projectile]`
- `FGameplayEffectContextHandle EffectContext [Effect context, contains information about hit result, etc]`
- `int GameplayEffectLevel [If originating from a GameplayEffect, the level of that GameplayEffect]`
- `TWeakObjectPtr<AActor> Instigator [Instigator actor, the actor that owns the ability system component]`
- `FVector Location [Location cue took place at]`
- `FGameplayTag MatchedTagName [The tag name that matched this specific gameplay cue handler]`
- `FVector Normal [Normal of impact that caused cue]`
- `float32 NormalizedMagnitude [Magnitude of source gameplay effect, normalzed from 0-1. Use this for "how strong is the gameplay effect" (0=min, 1=,max)]`
- `FGameplayTag OriginalTag [The original tag of the gameplay cue]`
- `TWeakObjectPtr<const UPhysicalMaterial> PhysicalMaterial [PhysMat of the hit, if there was a hit.]`
- `float32 RawMagnitude [Raw final magnitude of source gameplay effect. Use this is you need to display numbers or for other informational purposes.]`
- `TWeakObjectPtr<const UObject> SourceObject [Object this effect was created from, can be an actor or static object. Useful to bind an effect to a gameplay object]`
- `TWeakObjectPtr<USceneComponent> TargetAttachComponent [Could be used to say "attach FX to this component always"]`
- `bool bReplicateLocationWhenUsingMinimalRepProxy [If we're using a minimal replication proxy, should we replicate location for this cue]`


**方法**:

- `AActor GetEffectCauser() const`
- `AActor GetInstigator() const`
- `const UPhysicalMaterial GetPhysicalMaterial() const`
- `const UObject GetSourceObject() const`
- `USceneComponent GetTargetAttachComponent() const`
- `SetEffectCauser(AActor EffectCauser)`
- `SetInstigator(AActor Instigator)`
- `SetPhysicalMaterial(const UPhysicalMaterial PhysicalMaterial)`
- `SetSourceObject(const UObject SourceObject)`
- `SetTargetAttachComponent(USceneComponent TargetAttachComponent)`
- `FGameplayCueParameters& opAssign(FGameplayCueParameters Other)`

---

