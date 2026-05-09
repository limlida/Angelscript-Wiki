### UTargetingSelectionTask_AOE


@class UTargetingSelectionTask_AOE

Basic AOE based selection task. There are 4 shape types to choose from + a custom option.

Box - Defined by a given half extent
Cylinder - Defined by the half extent (box) + radius
Sphere  - Defined by a given radius
Capsule - Defined by the radius + half height

SourceComponent - Use a collision component with a specific component tag as the shape

**属性**:

- `ECollisionChannel CollisionChannel [The collision channel to use for the overlap check (as long as Collision Profile Name is not set)]`
- `TArray<EObjectTypeQuery> CollisionObjectTypes [The collision profile name to use for the overlap check]`
- `FCollisionProfileName CollisionProfileName [The collision profile name to use for the overlap check]`
- `FName ComponentTag [The component tag to use if a custom component is desired as the overlap shape.
              Use to look up the component on the source actor]`
- `FVector DefaultSourceOffset [The default source location offset used by GetSourceOffset]`
- `FRotator DefaultSourceRotationOffset [The default source rotation offset used by GetSourceRotationOffset]`
- `FVector HalfExtent [The half extent to use for box and cylinder
    For Cylinder the X component will be the radius and Z will be its height]`
- `FScalableFloat HalfHeight [The half height to use for capsule overlap checks]`
- `FScalableFloat Radius [The radius to use for sphere and capsule overlaps]`
- `ETargetingAOEShape ShapeType [The shape type to use for the AOE]`
- `bool bIgnoreInstigatorActor [Indicates the trace should ignore the source actor]`
- `bool bIgnoreSourceActor [Indicates the trace should ignore the source actor]`
- `bool bTraceComplex [When enabled, the trace will be performed against complex collision.]`
- `bool bUseRelativeOffset [Should we offset based on world or relative Source object transform?]`


**方法**:

- `FVector GetSourceLocation(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get the source location for the AOE
- `FVector GetSourceOffset(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get a source location offset for the AOE
- `FQuat GetSourceRotation(FTargetingRequestHandle TargetingHandle) const`  
  Native event to get the source rotation for the AOE
- `FRotator GetSourceRotationOffset(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get a source rotation offset for the AOE

---

