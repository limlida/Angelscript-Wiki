### FFootPlacementTraceSettings


**属性**:

- `ETraceTypeQuery ComplexTraceChannel [The channel to use for our complex trace]`
- `float32 EndOffset [A positive value extends the trace length below the bone]`
- `float32 MaxGroundPenetration [How much the feet can penetrate the ground geometry. It's recommended to allow some to account for interpolation
Negative values disable this effect]`
- `ETraceTypeQuery SimpleTraceChannel [The channel to use for our simple trace]`
- `float32 StartOffset [A negative value extends the trace length above the bone]`
- `float32 SweepRadius [The trace is a sphere sweep with this radius. It should be big enough to prevent the trace from going through
small geometry gaps]`
- `bool bDisableComplexTrace []`
- `bool bEnabled [Enabling tracing for ground alignment
@TODO: Use ground normal when not tracing]`


**方法**:

- `FFootPlacementTraceSettings& opAssign(FFootPlacementTraceSettings Other)`

---

