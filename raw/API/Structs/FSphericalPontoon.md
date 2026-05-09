### FSphericalPontoon


**属性**:

- `FVector CenterLocation []`
- `FName CenterSocket [The socket to center this pontoon on. Also used as the name of the pontoon for effects]`
- `UWaterBodyComponent CurrentWaterBodyComponent []`
- `float32 ImmersionDepth []`
- `FVector LocalForce []`
- `FVector Offset []`
- `float32 Radius [The radius of the pontoon]`
- `FVector RelativeLocation [Relative Location of pontoon WRT parent actor. Overridden by Center Socket.]`
- `FQuat SocketRotation []`
- `int WaterBodyIndex []`
- `float32 WaterDepth []`
- `float32 WaterHeight []`
- `FVector WaterPlaneLocation []`
- `FVector WaterPlaneNormal []`
- `FVector WaterSurfacePosition []`
- `FVector WaterVelocity []`
- `bool bFXEnabled [Should this pontoon be considered as a candidate location for visual/audio effects upon entering water for burst cues? To be implemented by user]`
- `bool bIsInWater []`


**方法**:

- `FSphericalPontoon& opAssign(FSphericalPontoon Other)`

---

