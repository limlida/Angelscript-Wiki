### UTargetingSelectionTask_Trace


@class UTargetingSelectionTask_Trace

Selection task that can perform a synchronous or asynchronous trace (line/sweep)
to find all targets up to the first blocking hit (or its end point).

**属性**:

- `FCollisionProfileName CollisionProfileName [The collision profile name to use instead of trace channel (does not work for async traces)]`
- `FVector DefaultSourceOffset [The default source location offset used by GetSourceOffset]`
- `FScalableFloat DefaultSweptTraceBoxHalfExtentX [The default swept extents used by GetSweptTraceExtents when the trace type is set to Box]`
- `FScalableFloat DefaultSweptTraceBoxHalfExtentY [The default swept extents used by GetSweptTraceBoxHalfExtents when the trace type is set to Box]`
- `FScalableFloat DefaultSweptTraceBoxHalfExtentZ [The default swept extents used by GetSweptTraceBoxHalfExtents when the trace type is set to Box]`
- `FScalableFloat DefaultSweptTraceCapsuleHalfHeight [The default swept trace radius used by GetSweptTraceRadius when the trace type is set to Capsule]`
- `FScalableFloat DefaultSweptTraceRadius [The default swept trace radius used by GetSweptTraceRadius when the trace type is set to Sphere or Capsule]`
- `FRotator DefaultSweptTraceRotation [The default swept rotation (relative to the trace direction) used by GetSweptTraceRotation when the trace type is set to Capsule or Box]`
- `FScalableFloat DefaultTraceLength [The default trace length to use if GetTraceLength is not overridden by a child]`
- `FVector ExplicitTraceDirection [An explicit trace direction to use (default uses pawn control rotation or actor forward vector in GetTraceDirection)]`
- `ETraceTypeQuery TraceChannel [The trace channel to use]`
- `ETargetingTraceType TraceType [The trace type (i.e. shape) to use]`
- `bool bComplexTrace [Indicates the trace should perform a complex trace]`
- `bool bIgnoreInstigatorActor [Indicates the trace should ignore the source actor]`
- `bool bIgnoreSourceActor [Indicates the trace should ignore the source actor]`
- `bool bMultiTrace [Indicates whether the trace should be a multi trace or a single trace]`


**方法**:

- `GetAdditionalActorsToIgnore(FTargetingRequestHandle TargetingHandle, TArray<AActor>& OutAdditionalActorsToIgnore) const`  
  Native Event to get additional actors the Trace should ignore
- `FVector GetSourceLocation(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get the source location for the Trace
- `FVector GetSourceOffset(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get a source location offset for the Trace
- `FVector GetSweptTraceBoxHalfExtents(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get the swept box trace half extents (only called if TraceType = ETargetingTraceType::Box)
- `float32 GetSweptTraceCapsuleHalfHeight(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get the swept trace capsule's half height (only called if  TraceType = ETargetingTraceType::Capsule)
- `float32 GetSweptTraceRadius(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get the swept trace radius (only called if TraceType = ETargetingTraceType::Sphere or TraceType = ETargetingTraceType::Capsule)
- `FRotator GetSweptTraceRotation(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get the swept trace rotation relative to trace direction
      (only called if TraceType = ETargetingTraceType::Capsule or TraceType = ETargetingTraceType::Box)
- `FVector GetTraceDirection(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get the direction for the Trace
- `float32 GetTraceLength(FTargetingRequestHandle TargetingHandle) const`  
  Native Event to get the length for the Trace

---

