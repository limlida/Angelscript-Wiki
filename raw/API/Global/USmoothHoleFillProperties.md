### USmoothHoleFillProperties


* Properties. This class reflects the parameters in FSmoothFillOptions, but is decorated to allow use in the UI system.

**属性**:

- `float FillDensityScalar [Relative triangle density of fill region]`
- `float32 InteriorSmoothness [Desired Smoothness. This is not a linear quantity, but larger numbers produce smoother results]`
- `int RemeshingExteriorRegionWidth [Number of vertex rings outside of the fill region to allow remeshing]`
- `int SmoothingExteriorRegionWidth [Number of vertex rings outside of the fill region to perform smoothing]`
- `int SmoothingInteriorRegionWidth [Number of vertex rings away from the fill region boundary to constrain smoothing]`
- `bool bConstrainToHoleInterior [Allow smoothing and remeshing of triangles outside of the fill region]`
- `bool bProjectDuringRemesh [Whether to project to the original mesh during post-smooth remeshing. This can be expensive on large meshes with
many holes.]`

---

