### FInputRayHit


* FInputRayHit is returned by various hit-test interface functions.
* Generally this is intended to be returned as the result of a hit-test with a FInputDeviceRay

**属性**:

- `float HitDepth [distance along ray at which intersection occurred]`
- `int HitIdentifier [Client-defined integer identifier for hit object/element/target/etc]`
- `FVector HitNormal [Normal at hit point, if available]`
- `TWeakObjectPtr<UObject> HitObject [Client-defined pointer for UObject-derived hit owners.
HitOwner and HitObject should be set to the same pointer if the HitOwner derives from UObject.]`
- `bool bHasHitNormal [True if HitNormal was set]`
- `bool bHit [true if ray hit something, false otherwise]`


**方法**:

- `FInputRayHit& opAssign(FInputRayHit Other)`

---

