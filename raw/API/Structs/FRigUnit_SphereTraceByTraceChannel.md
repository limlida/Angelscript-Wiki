### FRigUnit_SphereTraceByTraceChannel


Sweeps a sphere against the world and return the first blocking hit using a specific channel. Target objects can have different object types, but they need to have the same trace channel set to "block" in their collision response settings.
You can create custom trace channels in Project Setting - Collision.

**属性**:

- `FVector End [End of the trace in rig / global space]`
- `FVector HitLocation [Hit location in rig / global Space]`
- `FVector HitNormal [Hit normal in rig / global Space]`
- `float32 Radius [Radius of the sphere to use for sweeping / tracing]`
- `FVector Start [Start of the trace in rig / global space]`
- `ETraceTypeQuery TraceChannel [The 'channel' that this trace is in, used to determine which components to hit]`
- `bool bHit [Returns true if there was a hit]`


**方法**:

- `FRigUnit_SphereTraceByTraceChannel& opAssign(FRigUnit_SphereTraceByTraceChannel Other)`

---

