### FCombatTraceData


Stored on both weapons and our player for unarmed combat. Replaces the need for expensive targeting actors, GAs just generate target data themselves

**属性**:

- `float32 TraceDistance`
- `float32 TraceRadius`
- `bool bTraceMulti [True if we want to trace multi instead of single]`


**方法**:

- `FCombatTraceData& opAssign(FCombatTraceData Other)`

---

