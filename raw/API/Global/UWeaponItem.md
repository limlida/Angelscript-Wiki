### UWeaponItem


Base class for an equippable weapon. Weapons don't generally have any attack logic in them, instead they grant abilities which have the logic.

**属性**:

- `float32 AttackDamage [base damage this weapon should do. It is up the combat ability whether it wants/needs this value.]`
- `float32 BotAttackRange [Bots will need to be within this range to try attack with this weapon.]`
- `int ClipSize [The clip size of the weapon, if the weapon uses one.]`
- `TSoftClassPtr<UCrosshairWidget> CrosshairWidget [If using a crosshair container it will populate itself with this crosshair when weapon is equipped.]`
- `float32 HeavyAttackDamageMultiplier [How much should base damage be multiplied for a heavy attack. It is up the combat ability whether it wants/needs this value, some weapons may not have heavy attacks.]`
- `TMap<FGameplayTag,FWeaponAttachmentConfig> HolsterAttachmentConfigs [Defines how the weapon should be attached in different slots]`
- `float32 LastAttackTime [The last time this weapon attacked. Requires OnAttack() to be called by owning ability, currently used for weapon spread but could be useful elsewhere.]`
- `TArray<TSubclassOf<UNarrativeGameplayAbility>> MainhandWeaponAbilities [When the weapon is wielded in the mainhand, we'll grant these abilities instead of the WeaponAbilities.]`
- `TArray<TSubclassOf<UNarrativeGameplayAbility>> OffhandWeaponAbilities [When the weapon is wielded in the offhand, we'll grant these abilities instead of the WeaponAbilities]`
- `TSubclassOf<UNarrativeItem> RequiredAmmo [Ammo item class for this weapon. Combat Ability will deny activation if we don't have the required ammo.
      empty class means weapon can attack without ammo. This is in WeaponItem base class as any weapon should be able to support ammo, not just firearms.]`
- `TArray<TSubclassOf<UNarrativeGameplayAbility>> WeaponAbilities [When the weapon is wielded on its own, we'll grant this set of abilities.]`
- `TMap<FGameplayTag,FWeaponAttachmentSlotConfig> WeaponAttachmentConfiguration [Defines the attachment configuration for this weapon]`
- `TMap<FGameplayTag,UWeaponAttachmentItem> WeaponAttachments [The attachment items currently on this weapon.]`
- `FWeaponClipState WeaponClipState [Stores information about our weapons clip.]`
- `EWeaponHandRule WeaponHand [Defines which hand the weapon goes in when wielded.]`
- `TSoftClassPtr<AWeaponVisual> WeaponVisualClass [Weapon visual actor to spawn. Will attach to player using Holster/Wield Attachment configs below.]`
- `TMap<FGameplayTag,FWeaponAttachmentConfig> WieldAttachmentConfigs [Defines how the weapon should be attached in different hands]`
- `FGameplayTag WieldedSlot [The hand this weapon is wielded in, if any.]`
- `bool bAllowManualReload [Whether this weapon can be manually reloaded via GA_Reload, or whether it cannot be manually reloaded.]`
- `bool bBotsConsumeAmmo [If true, bots won't actually consume ammo when shooting. They will still need ammo however - it just wont be consumed.]`
- `bool bPawnFollowsControlRotation [Allows us to define whether the pawn should follow the camera rotation with this weapon equipped. Bots will not apply this as they need their AIFocus to work.]`
- `bool bPawnOrientsRotationToMovement [Allows us to define whether the pawn orient their rotation to velocity with this weapon equipped.]`


**方法**:

- `bool CanAttack() const`  
  Return whether the weapon is allowed to attack.
- `bool CanDualWieldWith(UWeaponItem Other)`  
  Check if we can dual wield this weapon with the other test weapon.
- `bool ConsumeAmmo(int Amount = 1)`  
  Tell our weapon to use some ammo, return true if this succeeded.
- `int GetAmmoInClip() const`  
  Return the amount of ammo in our weapons clip.
- `UNarrativeItem GetAmmoSource() const`  
  Get the currently used ammo - either the one our mag is using or if the weapon requires equippable ammo, the one in our ammo slot.
- `UWeaponAttachmentItem GetAttachment(FGameplayTag AttachmentSlot) const`  
  Get the attachment at the given slot if there is one
- `float32 GetAttackRange() const`  
  Used by bots to determine whether they are close enough to perform an attack with this weapon
- `int GetClipSize() const`  
  Return the size of our weapons clip.
- `TArray<UNarrativeAnimSet> GetComboAnims(bool bHeavyAttack) const`  
  Return the combo animations for a given attack type - by default this won't return any combo anims, weapons that need combos should override this.
- `int GetSpareAmmo() const`  
  Return the amount of spare ammo that our clip isnt using
- `FCombatTraceData GetTraceData() const`  
  Return the trace data for the weapon. We're moving away from this and instead pushing people to store TraceData on the ability instead of coupling this to weapon.
- `FText GetWeaponDisplayName(bool bShowAttachments, bool bShowAmmo) const`  
  Return the display name of the weapon.
- `FWeaponAttachmentConfig GetWeaponHolsterAttachConfig(FGameplayTag DesiredSlot) const`  
  Grab the attachment config for the given slot.
- `float32 GetWeaponSpread() const`
- `FWeaponAttachmentConfig GetWeaponWieldAttachConfig(FGameplayTag DesiredSlot) const`  
  Grab the attachment config for the given slot.
- `HandleUnWield()`  
  Called when our owner stops holding this weapon
- `HandleWield()`  
  Called when our owner actually starts holding this weapon
- `bool HasAmmo() const`  
  Return whether or not we have ammo to fire, default is to check we have required ammo item.
- `bool IsHolstered() const`  
  Return whether the weapon is holstered or not
- `bool IsWielded() const`  
  Return whether the weapon is wielded or not
- `OnAttack()`  
  Usually called by the combat GA whenever we attack. Note that GA's don't HAVE to call this, so make sure GA does if using this.
- `bool Reload()`  
  Update the ammo in our clip. Doesn't play FX or anything, if you need that use GA_Reload ability.
- `bool RequiresAutoReload() const`  
  GA_Fire will start reloading the gun if this returns true, usually once we have an empty clip.
- `bool WantsOrientRotationToMovement() const`
- `bool WantsUseControllerRotationYaw() const`
- `WieldInSlot(FGameplayTag DesiredSlot)`  
  Wield our weapon to the given slot.

---

