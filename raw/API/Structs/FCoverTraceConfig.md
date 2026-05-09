### FCoverTraceConfig


collection of data for tracing for valid cover positions

**属性**:

- `float32 CoverSpacing [the distance between points along a cover chain.]`
- `float32 HalfHeight [how high up a cover must be to be considered low cover.]`
- `float32 PeekOverHeight [TODO: come up with a good way to explain this.]`
- `float32 PeekSideHeight [how high to check for side peeking.]`
- `float32 PeekSideWidth [how far out from the point to check for side peeking.]`
- `float32 TraceDepth [TODO: maybe have this linked to the edge distance or something? // how deep towards the cover to trace.]`


**方法**:

- `FCoverTraceConfig& opAssign(FCoverTraceConfig Other)`

---

