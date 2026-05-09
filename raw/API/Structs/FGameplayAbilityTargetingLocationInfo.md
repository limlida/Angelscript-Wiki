### FGameplayAbilityTargetingLocationInfo


Structure that stores a location in one of several different formats

**属性**:

- `FTransform LiteralTransform [A literal world transform can be used, if one has been calculated outside of the actor using the ability.]`
- `EGameplayAbilityTargetingLocationType LocationType [Type of location used - will determine what data is transmitted over the network and what fields are used when calculating position.]`
- `UGameplayAbility SourceAbility [Ability that will be using the targeting data]`
- `AActor SourceActor [A source actor is needed for Actor-based targeting, but not for Socket-based targeting.]`
- `UMeshComponent SourceComponent [Socket-based targeting requires a skeletal mesh component to check for the named socket.]`
- `FName SourceSocketName [If SourceComponent is valid, this is the name of the socket transform that will be used. If no Socket is provided, SourceComponent's transform will be used.]`


**方法**:

- `FGameplayAbilityTargetingLocationInfo& opAssign(FGameplayAbilityTargetingLocationInfo Other)`

---

