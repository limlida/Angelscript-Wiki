### URangedWeaponItem


Base class for a ranged weapon - includes some properties that aren't required for melee based weapons

**属性**:

- `float32 AimFOVPct [The FOV we should zoom in to as a percentage of the base FOV. 1=no zoom at all, 0.1 = huge amount of zoom]`
- `float32 AimSpreadMultiplier [If aiming we'll multiply current weapon spread by this number.]`
- `float32 AimWeaponFStop [Render FStop for weapon whilst aiming. This is a fixed value so all weapon FOVs frame the Aiming up the exact same - otherwise scopes and sights would be tiny/massive as you change weapon FOV in settings, which is not desirable.]`
- `float32 AimWeaponRenderFOV [Render FOV for weapon whilst aiming. This is a fixed value so all weapon FOVs frame the Aiming up the exact same - otherwise scopes and sights would be tiny/massive as you change weapon FOV in settings, which is not desirable.]`
- `float32 BaseSpreadDegrees [Base spread in degrees to add to the targeting transform of the weeapon.]`
- `float32 CrouchSpreadMultiplier [If crouched we'll multiply current weapon spread by this number.]`
- `float32 CurrentSpread []`
- `FVector HipRecoilImpulseTranslationMax [HipRecoil impulse max to add]`
- `FVector HipRecoilImpulseTranslationMin [HipRecoil impulse min to add]`
- `float32 MaxSpreadDegrees [Max spread in degrees we'll allow]`
- `float32 MoveSpeedAddDegrees [If moving at full speed, this amount of degrees will be added to spread. If half speed, half this amount, etc.]`
- `FVector RecoilImpulseTranslationMax [Recoil impulse max to add]`
- `FVector RecoilImpulseTranslationMin [Recoil impulse min to add]`
- `float32 SpreadDecreaseSpeed [Speed at which current spread returns to the base spread amount.]`
- `float32 SpreadFireBump [Amount we'll add to the spread when the weapon is fired]`
- `FCombatTraceData TraceData [The trace data we'll use when firing the weapon]`


**方法**:

- `float32 GetAimFOV() const`  
  Get the percentage of the default FOV this weapon should use when aiming
- `float32 GetAimFStop() const`  
  Get the f stop we want to apply to PPsettings when aiming
- `float32 GetAimWeaponRenderFOV() const`  
  Get the percentage we want the weapon FOV when aiming
- `FTransform GetRecoilImpulse() const`  
  Get a random recoil impulse that can be applied

---

