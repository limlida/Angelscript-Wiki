### UBakeCurvatureMapToolProperties


**属性**:

- `EBakeCurvatureClampMode Clamping [Clamping applied to curvature values before color mapping]`
- `EBakeCurvatureColorMode ColorMapping [How to map calculated curvature values to colors]`
- `float32 ColorRangeMultiplier [Multiplier for how the curvature values fill the available range in the selected Color Mapping; a larger value means that higher curvature is required to achieve the maximum color value.]`
- `EBakeCurvatureTypeMode CurvatureType [Type of curvature]`
- `float32 MinRangeMultiplier [Minimum for the curvature values to not be clamped to zero relative to the curvature for the maximum color value; a larger value means that higher curvature is required to not be considered as no curvature.]`

---

