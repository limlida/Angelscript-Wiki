### FHitResult


Structure containing information about one hit of a trace, such as point of impact and surface normal at that point.

**属性**:

- `FName BoneName [Name of bone we hit (for skeletal meshes).]`
- `float32 Distance [The distance from the TraceStart to the Location in world space. This value is 0 if there was an initial overlap (trace started inside another colliding object).]`
- `uint8 ElementIndex [Index to item that was hit, also hit primitive specific.]`
- `int FaceIndex [Face index we hit (for complex hits with triangle meshes).]`
- `FVector ImpactNormal [Normal of the hit in world space, for the object that was hit by the sweep, if any.
For example if a sphere hits a flat plane, this is a normalized vector pointing out from the plane.
In the case of impact with a corner or edge of a surface, usually the "most opposing" normal (opposed to the query direction) is chosen.]`
- `FVector ImpactPoint [Location in world space of the actual contact of the trace shape (box, sphere, ray, etc) with the impacted object.

Example: for a sphere trace test, this is the point where the surface of the sphere touches the other object.
@note: In the case of initial overlap (bStartPenetrating=true), ImpactPoint will be the same as Location because there is no meaningful single impact point to report.]`
- `int Item [Extra data about item that was hit (hit primitive specific).]`
- `FVector Location [The location in world space where the moving shape would end up against the impacted object, if there is a hit. Equal to the point of impact for line tests.

Example: for a sphere trace test, this is the point where the center of the sphere would be located when it touched the other object.
For swept movement (but not queries) this may not equal the final location of the shape since hits are pulled back slightly to prevent precision issues from overlapping another surface.]`
- `FName MyBoneName [Name of the _my_ bone which took part in hit event (in case of two skeletal meshes colliding).]`
- `int MyItem [If the hit result is from a collision this will have extra info about the item that hit the second item.]`
- `FVector Normal [Normal of the hit in world space, for the object that was swept. Equal to ImpactNormal for line tests.
This is computed for capsules and spheres, otherwise it will be the same as ImpactNormal.

Example: for a sphere trace test, this is a normalized vector pointing in towards the center of the sphere at the point of impact.]`
- `float32 PenetrationDepth [If this test started in penetration (bStartPenetrating is true) and a depenetration vector can be computed,
this value is the distance along Normal that will result in moving out of penetration.
If the distance cannot be computed, this distance will be zero.]`
- `float32 Time ['Time' of impact along trace direction (ranging from 0.0 to 1.0) if there is a hit, indicating time between TraceStart and TraceEnd.
For swept movement (but not queries) this may be pulled back slightly from the actual time of impact, to prevent precision problems with adjacent geometry.]`
- `FVector TraceEnd [End location of the trace; this is NOT where the impact occurred (if any), but the furthest point in the attempted sweep.

For example if a sphere is swept against the world, this would be the center of the sphere if there was no blocking hit.]`
- `FVector TraceStart [Start location of the trace.

For example if a sphere is swept against the world, this is the starting location of the center of the sphere.]`


**方法**:

- `AActor GetActor() const`  
  Actor that owns the Component that was hit by the trace.
- `bool GetbBlockingHit() const`  
  Indicates if this hit was a result of blocking collision. If false, there was no hit or it was an overlap/touch instead.
- `bool GetbStartPenetrating() const`  
  Whether the trace started in penetration, i.e. with an initial blocking overlap.
In the case of penetration, if PenetrationDepth > 0.f, then it will represent the distance along the Normal vector that will result in
minimal contact between the swept shape and the object that was hit. In this case, ImpactNormal will be the normal opposed to movement at that location
(ie, Normal may not equal ImpactNormal). ImpactPoint will be the same as Location, since there is no single impact point to report.
- `UPrimitiveComponent GetComponent() const`  
  PrimitiveComponent hit by the trace.
- `UPhysicalMaterial GetPhysMaterial() const`  
  Physical material that was hit.
@note Must set bReturnPhysicalMaterial on the swept PrimitiveComponent or in the query params for this to be returned.
- `Reset(float32 InTime = 1.000000, bool bPreserveTraceData = true)`  
  Reset hit result while optionally saving TraceStart and TraceEnd.
- `SetActor(AActor Actor)`  
  Actor that owns the Component that was hit by the trace.
- `SetbBlockingHit(bool bIsBlocking)`  
  Indicates if this hit was a result of blocking collision. If false, there was no hit or it was an overlap/touch instead.
- `SetbStartPenetrating(bool bStartPenetrating)`  
  Whether the trace started in penetration, i.e. with an initial blocking overlap.
In the case of penetration, if PenetrationDepth > 0.f, then it will represent the distance along the Normal vector that will result in
minimal contact between the swept shape and the object that was hit. In this case, ImpactNormal will be the normal opposed to movement at that location
(ie, Normal may not equal ImpactNormal). ImpactPoint will be the same as Location, since there is no single impact point to report.
- `SetComponent(UPrimitiveComponent Component)`  
  PrimitiveComponent hit by the trace.
- `SetPhysMaterial(UPhysicalMaterial PhysMaterial)`  
  Physical material that was hit.
@note Must set bReturnPhysicalMaterial on the swept PrimitiveComponent or in the query params for this to be returned.
- `FHitResult& opAssign(FHitResult Other)`

---

