### UProjectToTargetToolProperties


Subclass URemeshMeshToolProperties just so we can set default values for some properties. Setting these values in the
Setup function of UProjectToTargetTool turns out to be tricky to achieve with the property cache.

**属性**:

- `int FaceProjectionPassesPerRemeshIteration []`
- `float32 FillAreaDistanceMultiplier []`
- `float32 FillAreaSmoothMultiplier []`
- `float32 NormalAlignmentSpeed []`
- `float32 SurfaceProjectionSpeed []`
- `bool bParallel []`
- `bool bSmoothInFillAreas []`
- `bool bWorldSpace []`

---

