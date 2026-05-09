### ANarrativeVehicleBase


Base class for all pawn-based vehicles in Narrative Pro. Some mounts such as horses extend
NPCCharacter instead, but for cars, helis, water vehidles etc this is the base you'll want.

Vehicles also have ASCs to handle taking damage, running effects, etc.

**属性**:

- `UAbilityConfiguration AbilityConfiguration [Contains some default abilities to grant, attributes, etc.]`
- `UNarrativeAbilitySystemComponent AbilitySystemComponent [ASC for the vehicle to allow it to support health, death, etc.]`
- `UNarrativeAttributeSetBase AttributeSetBase`
- `USkeletalMeshComponent ImpactMesh [A hidden slightly enlarged version of vehicle mesh we generate overlaps and use for vehicle damage.]`
- `USkeletalMeshComponent Mesh [The main skeletal mesh associated with this Vehicle]`
- `FSeedSet OnSeedSet`
- `TSubclassOf<UGameplayEffect> VehicleDamageEffect [Damage effect to apply when vehicle impacts a character]`
- `FVector2D VehicleImpactCharacterDamage [This is used as a range we map our velocity onto, with 0.2-1.0 of max health being dealt to the character we hit as a result of the impact.]`
- `UCurveFloat VehicleImpactObjectDamageCurve [We read this curve using impact normal size as the input and curve provides damage to deal]`
- `FVector2D VehicleImpactSelfDamage [This is used as a range we map our velocity onto, with 0.2-1.0 of max health being dealth to the vehicle as a result of the impact.]`
- `UNavModifierComponent VehicleNavModifier [Nav modifier for this vehicle, helps NPCs etc path around the vehicle]`
- `int VehicleRandomSeed [This vehicles random seed, generated once and synced on client-server. Can be used for anything this character needs.]`
- `FGuid VehicleSaveGUID [Used to save this vehicle to disk. Can be zero'ed if you don't want the vehicle saving.]`


**方法**:

- `DealVehicleDamage(UAbilitySystemComponent DamageASC, float32 DamageAmount, FHitResult Hit)`  
  Deal vehicle damage to some actor - this can be called whenever needed
- `float32 GetHealth() const`
- `float32 GetMaxHealth() const`
- `int GetVehicleLevel() const`
- `HandleDeath(AActor KilledActor, UNarrativeAbilitySystemComponent KilledActorASC)`  
  Handle what should happen when the vehicle "dies"
- `OnCollisionMeshOverlap(UPrimitiveComponent OverlappedComponent, AActor OtherActor, UPrimitiveComponent OtherComp, int OtherBodyIndex, bool bFromSweep, FHitResult SweepResult)`  
  Handle what should happen when the vehicle collision mesh overlaps something. This mesh doesn't stop the vehicle moving
- `OnVehicleMeshHit(UPrimitiveComponent HitComponent, AActor OtherActor, UPrimitiveComponent OtherComp, FVector NormalImpulse, FHitResult Hit)`  
  Handle what should happen when the base vehicle mesh hits something.
- `SetManagedByMass(bool bManagedByMass)`  
  Mass Actor Management

---

