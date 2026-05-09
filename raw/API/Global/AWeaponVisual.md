### AWeaponVisual


**属性**:

- `TMap<FGameplayTag,UStaticMeshComponent> AttachmentMeshComps [Cached attachments meshes for attachments that are added to the weapon - BPReadWrite so we can suport having "Default" attachments, like IronSights.]`
- `TMap<FGameplayTag,UStaticMesh> AttachmentMeshDefaultMeshes [Attachment meshes will have their mesh set to this if no attachment is equipped in that slot]`
- `ANarrativeCharacter CharacterOwner`
- `TSubclassOf<UAnimInstance> DefaultWeaponAnimLayer [Anim BP we'll apply to the owner when the weapon is unholstered. Override GetWeaponOverlay() if you need a dynamic value.]`
- `TSubclassOf<UAnimInstance> DualWieldWeapon1PAnimLayer [Anim BP we'll apply to the 1P owner when the weapon is equipped. If not set DefaultWeaponAnimLayer will be used.]`
- `TSubclassOf<UAnimInstance> DualWieldWeaponAnimLayer [Anim BP we'll apply to the owner when the weapon is unholstered in dual wielding configuration.]`
- `TMap<FGameplayTag,TSubclassOf<UAnimInstance>> FormSpecificLayers [Form specific overrides for WeaponAnimLayer]`
- `TMap<FGameplayTag,UStaticMeshComponent> LocalAttachmentMeshComps [We use a second map for local attachments, that are only for local player ie first person]`
- `USkeletalMeshComponent LocalWeaponMesh`
- `TSubclassOf<UAnimInstance> Weapon1PAnimLayer [Anim BP we'll apply to the 1P owner when the weapon is equipped. If not set DefaultWeaponAnimLayer will be used.]`
- `USkeletalMeshComponent WeaponMesh`
- `UWeaponItem WeaponOwner [The weapon item that created this weapon visual when it was equipped]`


**方法**:

- `BPHandleHolster()`  
  Called when weapon is holstered.
- `BPHandleWield()`  
  Called when weapon is wielded.
- `CacheAnimationTransform(FAnimNotifyEventReference AnimNotifyEventRef)`  
  Caches animation socket data for retrieval at a later time.
- `CacheCollisionData(bool bForceUpdate)`  
  Caches collision data so that we can query collision while performing attacks.
@param bForceUpdate Whether we want to forcefully generate collision data even if it was already done
- `CleanupAttackData()`  
  Cleans up attack data so that it is ready to be used again
- `TArray<UPrimitiveComponent> GetCollidingPrimitives()`  
  Fetches capsule primitives that will be considered for collision during sweep melee attacks
@note Primitives that do not have capsule collision geometry will be ignored!
- `USkeletalMeshComponent GetRelevantWeaponMesh() const`
- `TArray<USkeletalMeshComponent> GetWeaponMeshes() const`
- `TSubclassOf<UAnimInstance> GetWeaponOverlayLayer(bool bFirstPersonMesh)`  
  Define what anim overlay the weapon should apply.This lets us select a different overlay for shield, dual wield, etc by overriding this.

       *@param WeaponsToEquip an array with all the weapons being equipped - this is essential because the anim overlay we want will vary based on what weapon combos we're using ie Sword/Shield, Sword/Sword, Pistol/Pistol, etc.
- `HandleAddAttachment(UWeaponAttachmentItem Attachment, FWeaponAttachmentSlotConfig WeaponSlotConfig)`
- `HandlePerspectiveUpdate(bool bIsFirstPerson)`  
  Define how the weapon visual should update when we switch between third/first person perspective.
- `HandleRemoveAttachment(UWeaponAttachmentItem Attachment)`
- `PerformCollisionCheck(TArray<FHitResult>& OutHits)`  
  Performs a collision sweep on current and previous animation data that has not been calculated yet. This ensures that collision is accurate when at low framerate.
- `RegisterDefaultAttachment(FGameplayTag Slot, UStaticMeshComponent Mesh, UStaticMeshComponent LocalMesh)`  
  Register a default attachment on the weapon, like ironsights.
- `bool SweepForHits(FVector Start, FVector End, FQuat Rot, FVector CapsuleSize, TArray<FHitResult>& OutHits)`  
  Allows us to use the weapons geometry in some way to sweep for hits.

---

