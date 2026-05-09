### FRigUnit_SphereTraceWorld


Sweeps a sphere against the world and return the first blocking hit using a specific channel

**属性**:

- `ECollisionChannel Channel [The 'channel' that this trace is in, used to determine which components to hit]`
- `FVector End [End of the trace in rig / global space]`
- `FVector HitLocation [Hit location in rig / global Space]`
- `FVector HitNormal [Hit normal in rig / global Space]`
- `float32 Radius [Radius of the sphere to use for sweeping / tracing]`
- `FVector Start [Start of the trace in rig / global space]`
- `bool bHit [Returns true if there was a hit]`


**方法**:

- `FRigUnit_SphereTraceWorld& opAssign(FRigUnit_SphereTraceWorld Other)`

---

