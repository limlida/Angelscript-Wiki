### UUVProjectionToolProperties


Standard properties

**属性**:

- `float32 CylinderSplitAngle [Angle in degrees to determine whether faces should be assigned to the cylinder or the flat end caps]`
- `FVector Dimensions [Width, length, and height of the projection shape before rotation]`
- `float32 ExpMapNormalBlending [Blend between surface normals and projection normal; ExpMap projection becomes Plane projection when this value is 1]`
- `float32 ExpMapSmoothingAlpha [Smoothing parameter; larger values result in faster smoothing in each step.]`
- `int ExpMapSmoothingSteps [Number of smoothing steps to apply; this slightly increases distortion but produces more stable results.]`
- `EUVProjectionToolInitializationMode Initialization [Determines how projection settings will be initialized; this only takes effect if the projection shape dimensions or position are unchanged]`
- `EUVProjectionMethod ProjectionType [Shape and/or algorithm to use for UV projection]`
- `float32 Rotation [Rotation in degrees applied after computing projection]`
- `FVector2D Scale [Scaling applied after computing projection]`
- `FVector2D Translation [Translation applied after computing projection]`
- `bool bProportionalDimensions [If true, changes to Dimensions result in all components be changed proportionally]`

---

