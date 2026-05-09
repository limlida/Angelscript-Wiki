### UImplicitSmoothProperties


Properties for Implicit smoothing

**属性**:

- `float32 Smoothness [Desired Smoothness. This is not a linear quantity, but larger numbers produce smoother results]`
- `float32 VolumeCorrection [Magic number that allows you to try to correct for shrinking caused by smoothing]`
- `bool bPreserveUVs [If this is false, the smoother will try to reshape the triangles to be more regular, which will distort UVs]`

---

