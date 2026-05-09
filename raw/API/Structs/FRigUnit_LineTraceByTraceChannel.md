### FRigUnit_LineTraceByTraceChannel


Performs a line trace against the world and return the first blocking hit using a specific channel. Target objects can have different object types, but they need to have the same trace channel set to "block" in their collision response settings.
You can create custom trace channels in Project Setting - Collision.

**属性**:

- `FVector End [End of the trace in rig / global space]`
- `FVector HitLocation [Hit location in rig / global Space]`
- `FVector HitNormal [Hit normal in rig / global Space]`
- `FVector Start [Start of the trace in rig / global space]`
- `ETraceTypeQuery TraceChannel [The 'channel' that this trace is in, used to determine which components to hit]`
- `bool bHit [Returns true if there was a hit]`


**方法**:

- `FRigUnit_LineTraceByTraceChannel& opAssign(FRigUnit_LineTraceByTraceChannel Other)`

---

