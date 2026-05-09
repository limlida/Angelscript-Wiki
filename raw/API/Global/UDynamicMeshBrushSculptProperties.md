### UDynamicMeshBrushSculptProperties


**属性**:

- `float32 PrimaryBrushSpeed [Strength of the Primary Brush]`
- `EDynamicMeshSculptBrushType PrimaryBrushType [Primary Brush Mode]`
- `float32 SmoothBrushSpeed [Strength of Shift-to-Smooth Brushing and Smoothing Brush]`
- `bool bDetailPreservingSmooth [If enabled, Remeshing is limited during Smoothing to avoid wiping out higher-density triangle areas]`
- `bool bFreezeTarget [When Freeze Target is toggled on, the Brush Target Surface will be Frozen in its current state, until toggled off. Brush strokes will be applied relative to the Target Surface, for applicable Brushes]`
- `bool bPreserveUVFlow [If true, try to preserve the shape of the UV/3D mapping. This will limit Smoothing and Remeshing in some cases.]`

---

