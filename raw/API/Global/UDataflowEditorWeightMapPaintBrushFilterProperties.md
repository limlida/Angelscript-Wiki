### UDataflowEditorWeightMapPaintBrushFilterProperties


TODO: Look at EditConditions for all these properties. Which ones make sense for which SubToolType?

**属性**:

- `float32 AngleThreshold [The Region affected by the current operation will be bounded by edge angles larger than this threshold]`
- `float AttributeValue [The new value to paint on the mesh]`
- `EMeshVertexPaintBrushAreaType BrushAreaMode [Area Mode specifies the shape of the brush and which triangles will be included relative to the cursor]`
- `float32 BrushSize [Relative size of brush]`
- `float GradientHighValue [The Gradient upper limit value]`
- `float GradientLowValue [The Gradient lower limit value]`
- `EDataflowEditorWeightMapPaintBrushType PrimaryBrushType []`
- `float Strength [How quickly each brush stroke will drive mesh values towards the desired value]`
- `EDataflowEditorWeightMapPaintInteractionType SubToolType []`
- `EDataflowEditorWeightMapPaintVisibilityType VisibilityFilter [Control which triangles can be affected by the current operation based on visibility. Applied after all other filters.]`
- `bool bNormalSeams [The Region affected by the current operation will be bounded by Hard Normal edges/seams]`
- `bool bUVSeams [The Region affected by the current operation will be bounded by UV borders/seams]`

---

