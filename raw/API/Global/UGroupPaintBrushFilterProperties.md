### UGroupPaintBrushFilterProperties


**属性**:

- `float32 AngleThreshold [The Region affected by the current operation will be bounded by edge angles larger than this threshold]`
- `EMeshGroupPaintBrushAreaType BrushAreaMode [When Volumetric, all faces inside the brush sphere are selected, otherwise only connected faces are selected]`
- `float32 BrushSize [Relative size of brush]`
- `int EraseGroup [Group to set as Erased value]`
- `int MinTriVertCount [Number of vertices in a triangle the Lasso must hit to be counted as "inside"]`
- `int SetGroup [The group that will be assigned to triangles]`
- `EMeshGroupPaintInteractionType SubToolType []`
- `EMeshGroupPaintVisibilityType VisibilityFilter [Control which triangles can be affected by the current operation based on visibility. Applied after all other filters.]`
- `bool bHitBackFaces [Allow the Brush to hit the back-side of the mesh]`
- `bool bNormalSeams [The Region affected by the current operation will be bounded by Hard Normal edges/seams]`
- `bool bOnlyEraseCurrent [When enabled, only the current group configured in the Paint brush is erased]`
- `bool bOnlySetUngrouped [If true, only triangles with no group assigned will be painted]`
- `bool bShowAllGroups [Display the Group ID for all visible groups in the mesh]`
- `bool bShowHitGroup [Display the Group ID of the last triangle under the cursor]`
- `bool bUVSeams [The Region affected by the current operation will be bounded by UV borders/seams]`

---

