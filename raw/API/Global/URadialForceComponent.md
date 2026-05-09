### URadialForceComponent


Used to emit a radial force or impulse that can affect physics objects and or destructible objects.

**属性**:

- `float32 DestructibleDamage [If > 0.f, will cause damage to destructible meshes as well]`
- `ERadialImpulseFalloff Falloff [How the force or impulse should fall off as object are further away from the center]`
- `float32 ForceStrength [How strong the force should be]`
- `float32 ImpulseStrength [How strong the impulse should be]`
- `TArray<EObjectTypeQuery> ObjectTypesToAffect [The object types that are affected by this radial force]`
- `float32 Radius [The radius to apply the force or impulse in]`
- `bool bIgnoreOwningActor [If true, do not apply force/impulse to any physics objects that are part of the Actor that owns this component.]`
- `bool bImpulseVelChange [If true, the impulse will ignore mass of objects and will always result in a fixed velocity change]`


**方法**:

- `AddObjectTypeToAffect(EObjectTypeQuery ObjectType)`  
  Add an object type for this radial force to affect
- `FireImpulse()`  
  Fire a single impulse
- `RemoveObjectTypeToAffect(EObjectTypeQuery ObjectType)`  
  Remove an object type that is affected by this radial force

---

