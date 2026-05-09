### FGameplayAbilityActorInfo


FGameplayAbilityActorInfo

Cached data associated with an Actor using an Ability.
        -Initialized from an AActor* in InitFromActor
        -Abilities use this to know what to actor upon. E.g., instead of being coupled to a specific actor class.
        -These are generally passed around as pointers to support polymorphism.
        -Projects can override UAbilitySystemGlobals::AllocAbilityActorInfo to override the default struct type that is created.

**属性**:

- `TWeakObjectPtr<UAbilitySystemComponent> AbilitySystemComponent [Ability System component associated with the owner actor, shouldn't be null]`
- `FName AffectedAnimInstanceTag [The linked Anim Instance that this component will play montages in. Use NAME_None for the main anim instance.]`
- `TWeakObjectPtr<UAnimInstance> AnimInstance [Anim instance of the avatar actor. Often null]`
- `TWeakObjectPtr<AActor> AvatarActor [The physical representation of the owner, used for targeting and animation. This will often be null!]`
- `TWeakObjectPtr<UMovementComponent> MovementComponent [Movement component of the avatar actor. Often null]`
- `TWeakObjectPtr<AActor> OwnerActor [The actor that owns the abilities, shouldn't be null]`
- `TWeakObjectPtr<APlayerController> PlayerController [PlayerController associated with the owning actor. This will often be null!]`
- `TWeakObjectPtr<USkeletalMeshComponent> SkeletalMeshComponent [Skeletal mesh of the avatar actor. Often null]`


**方法**:

- `ClearActorInfo()`
- `UAbilitySystemComponent GetAbilitySystemComponent() const`
- `FName GetAffectedAnimInstanceTag() const`
- `UAnimInstance GetAnimInstance() const`
- `UAnimInstance GetAnimInstanceFromSkeletalMesh() const`
- `AActor GetAvatarActor() const`
- `UMovementComponent GetMovementComponent() const`
- `AActor GetOwnerActor() const`
- `APlayerController GetPlayerController() const`
- `USkeletalMeshComponent GetSkeletalMeshComponent() const`
- `InitFromActor(AActor OwnerActor, AActor AvatarActor, UAbilitySystemComponent InAbilitySystemComponent)`
- `bool IsLocallyControlled() const`
- `bool IsLocallyControlledPlayer() const`
- `bool IsNetAuthority() const`
- `SetAbilitySystemComponent(UAbilitySystemComponent Component)`
- `SetAffectedAnimInstanceTag(FName Name)`
- `SetAnimInstance(UAnimInstance Instance)`
- `SetAvatarActor(AActor Actor)`
- `SetMovementComponent(UMovementComponent Instance)`
- `SetOwnerActor(AActor Actor)`
- `SetPlayerController(APlayerController Controller)`
- `SetSkeletalMeshComponent(USkeletalMeshComponent Component)`
- `FGameplayAbilityActorInfo& opAssign(FGameplayAbilityActorInfo Other)`

---

