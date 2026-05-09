### FBrushToolRadius


FBrushToolRadius is used to define the size of 3D "brushes" used in (eg) sculpting tools.
The brush size can be defined in various ways.

**属性**:

- `float32 AdaptiveSize [Adaptive brush size is used to interpolate between an object-specific minimum and maximum brush size]`
- `EBrushToolSizeType SizeType [Specify the type of brush size currently in use]`
- `float32 WorldRadius [World brush size is a dimension in world coordinates]`
- `bool bEnablePressureSensitivity []`
- `bool bToolSupportsPressureSensitivity []`


**方法**:

- `FBrushToolRadius& opAssign(FBrushToolRadius Other)`

---

