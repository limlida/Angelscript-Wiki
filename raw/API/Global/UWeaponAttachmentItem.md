### UWeaponAttachmentItem


An item that can be attached to a WeaponItem in order to modify its functionality and/or visuals

**属性**:

- `UStaticMesh AttachmentMesh [The mesh that we should create and attach to the gun - TODO soft ref and load this]`
- `float32 FOVOverride [If non negative value will act as an FOV override for ADS]`
- `float32 WeaponAimFStopOverride [If non negative value will act as an FStop override when aiming]`
- `FGameplayTag WeaponAttachmentSlot [The slot this attachment should equip to on the weapon]`
- `UWeaponItem WeaponOwner [The weapon this attachment is current attached to - null if not attached]`
- `FGuid WeaponOwnerGUID [Our owners GUID, cached so we can look the weapon back up from a savegame.]`
- `float32 WeaponRenderFOVOverride [If non negative value will act as an FOV override for ADS]`


**方法**:

- `HandleAttach(UWeaponItem AttachingTo)`  
  Handle any logic the attachment wants on Attach
- `HandleDetach(UWeaponItem DetachingFrom)`  
  Handle any logic the attachment wants on Attach
- `HandleUnWield()`  
  Called when our owner stops holding this weapon, or when we get detached from the currently wielded weapon.
      Nice hook for resetting modified state if attachment needs to do that.
- `HandleWield()`  
  Called when our owner actually starts holding this weapon, or when we get attached a currently wielded weapon.
      Nice hook for modifying state if attachment needs to do that.
- `float32 OverrideWeaponAimFStop() const`  
  Lets the attachment override the cameras FSTop when aiming if desired.
- `float32 OverrideWeaponCameraFOV() const`  
  Lets the attachment override the FOV if desired.
- `float32 OverrideWeaponRenderFOV() const`  
  Lets the attachment override the weapons render FOV if desired.
- `ServerSetWeaponOwner(UWeaponItem InWeaponOwner)`

---

