### FSmartObjectTraceParams


Struct used to define how traces should be handled.

**属性**:

- `FCollisionProfileName CollisionProfile [Collision profile to use to determine collisions.]`
- `TArray<EObjectTypeQuery> ObjectTypes [Object types to use to determine collisions.]`
- `ETraceTypeQuery TraceChannel [Trace channel to use to determine collisions.]`
- `ESmartObjectTraceType Type [Type of trace to use.]`
- `bool bTraceComplex [Whether we should trace against complex collision]`


**方法**:

- `FSmartObjectTraceParams& opAssign(FSmartObjectTraceParams Other)`

---

