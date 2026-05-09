### FBlendParameter


**属性**:

- `FString DisplayName []`
- `int GridNum [The number of grid divisions along this axis.]`
- `float32 Max [Maximum value for this axis range.]`
- `float32 Min [Minimum value for this axis range.]`
- `bool bSnapToGrid [If true then samples will always be snapped to the grid on this axis when added, moved, or the axes are changed.]`
- `bool bWrapInput [If true then the input can go outside the min/max range and the blend space is treated as being cyclic on this axis. If false then input parameters are clamped to the min/max values on this axis.]`


**方法**:

- `FBlendParameter& opAssign(FBlendParameter Other)`

---

