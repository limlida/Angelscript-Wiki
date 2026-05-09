### UVertexPaintBrushFilterProperties


**属性**:

- `float32 AngleThreshold [The Region affected by the current operation will be bounded by edge angles larger than this threshold]`
- `EMeshVertexPaintBrushAreaType BrushAreaMode [Area Mode specifies the shape of the brush and which triangles will be included relative to the cursor]`
- `EMeshVertexPaintMaterialMode MaterialMode [Specify which Materials should be used to render the Mesh]`
- `EMeshVertexPaintVisibilityType VisibilityFilter [Control which triangles can be affected by the current operation based on visibility. Applied after all other filters.]`
- `bool bIsolateGeometrySelection [If the tool was started with a mesh element selection, this setting hides everything
 except that selection, to make painting it easier. Requires that a mesh element
 selection exist on tool start.]`
- `bool bNormalSeams [The Region affected by the current operation will be bounded by Hard Normal edges/seams]`
- `bool bShowHitColor [Display the Color under the cursor]`
- `bool bUVSeams [The Region affected by the current operation will be bounded by UV borders/seams]`

---

