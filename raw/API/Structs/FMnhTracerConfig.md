### FMnhTracerConfig


**属性**:

- `float32 DebugDrawTime`
- `FColor DebugTraceBlockColor`
- `FColor DebugTraceColor`
- `FColor DebugTraceHitColor`
- `EDrawDebugTrace DrawDebugType`
- `float32 MeshSocketTracerLengthOffset`
- `float32 MeshSocketTracerRadius`
- `FName MeshSocket_1`
- `FName MeshSocket_2`
- `FMnhShapeData ShapeData [Shape specifications of the Tracer]`
- `FName SocketOrBoneName [Name of the Socket or Bone Tracer will be attached to]`
- `int TargetFps [Tick Rate of the Tracer]`
- `int TickDistanceTraveled [Distance traveled by Tracer between each Tick]`
- `FMnhTraceSettings TraceSettings [Collision settings for the Tracer]`
- `EMnhTraceSource TraceSource`
- `FGameplayTag TracerTag`
- `EMnhTracerTickType TracerTickType [Specifies how the tracer should tick. Sub-stepping is disabled on Match Game Tick]`


**方法**:

- `FMnhTracerConfig& opAssign(FMnhTracerConfig Other)`

---

