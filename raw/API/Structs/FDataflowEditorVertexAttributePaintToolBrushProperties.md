### FDataflowEditorVertexAttributePaintToolBrushProperties


**属性**:

- `float32 AngleThreshold [The Region affected by the current operation will be bounded by edge angles larger than this threshold]`
- `EMeshVertexPaintBrushAreaType BrushAreaMode [Area Mode specifies the shape of the brush and which triangles will be included relative to the cursor]`
- `EDataflowEditorToolVisibilityType VisibilityFilter [Control which triangles can be affected by the current operation based on visibility. Applied after all other filters.]`
- `bool bNormalSeams [The Region affected by the current operation will be bounded by Hard Normal edges/seams]`
- `bool bUVSeams [The Region affected by the current operation will be bounded by UV borders/seams]`


**方法**:

- `FDataflowEditorVertexAttributePaintToolBrushProperties& opAssign(FDataflowEditorVertexAttributePaintToolBrushProperties Other)`

---

