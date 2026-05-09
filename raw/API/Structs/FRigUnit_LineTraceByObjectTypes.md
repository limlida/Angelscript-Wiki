### FRigUnit_LineTraceByObjectTypes


Performs a line trace against the world and return the first blocking hit. The trace is filtered by object types only, the collision response settings are ignored.
You can create custom object types in Project Setting - Collision

**属性**:

- `FVector End [End of the trace in rig / global space]`
- `FVector HitLocation [Hit location in rig / global Space]`
- `FVector HitNormal [Hit normal in rig / global Space]`
- `TArray<EObjectTypeQuery> ObjectTypes [The types of objects that this trace can hit]`
- `FVector Start [Start of the trace in rig / global space]`
- `bool bHit [Returns true if there was a hit]`


**方法**:

- `FRigUnit_LineTraceByObjectTypes& opAssign(FRigUnit_LineTraceByObjectTypes Other)`

---

