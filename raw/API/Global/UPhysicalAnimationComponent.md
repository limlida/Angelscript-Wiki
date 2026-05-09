### UPhysicalAnimationComponent


**属性**:

- `float32 StrengthMultiplyer [Multiplies the strength of any active motors. (can blend from 0-1 for example)]`


**方法**:

- `ApplyPhysicalAnimationProfileBelow(FName BodyName, FName ProfileName, bool bIncludeSelf = true, bool bClearNotFound = false)`  
  Applies the physical animation profile to the body given and all bodies below.
@param  BodyName                     The body from which we'd like to start applying the physical animation profile. Finds all bodies below in the skeleton hierarchy. None implies all bodies
@param  ProfileName          The physical animation profile we'd like to apply. For each body in the physics asset we search for physical animation settings with this name.
@param  bIncludeSelf         Whether to include the provided body name in the list of bodies we act on (useful to ignore for cases where a root has multiple children)
@param  bClearNotFound       If true, bodies without the given profile name will have any existing physical animation settings cleared. If false, bodies without the given profile name are left untouched.
- `ApplyPhysicalAnimationSettings(FName BodyName, FPhysicalAnimationData PhysicalAnimationData)`  
  Applies the physical animation settings to the body given.
- `ApplyPhysicalAnimationSettingsBelow(FName BodyName, FPhysicalAnimationData PhysicalAnimationData, bool bIncludeSelf = true)`  
  Applies the physical animation settings to the body given and all bodies below.
- `FTransform GetBodyTargetTransform(FName BodyName) const`  
  Returns the target transform for the given body. If physical animation component is not controlling this body, returns its current transform.
- `SetSkeletalMeshComponent(USkeletalMeshComponent InSkeletalMeshComponent)`  
  Sets the skeletal mesh we are driving through physical animation. Will erase any existing physical animation data.
- `SetStrengthMultiplyer(float32 InStrengthMultiplyer)`  
  Updates strength multiplyer and any active motors

---

