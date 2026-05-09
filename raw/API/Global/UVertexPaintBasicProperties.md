### UVertexPaintBasicProperties


**属性**:

- `EMeshVertexPaintColorBlendMode BlendMode [Controls how painted Colors will be combined with the existing Colors]`
- `FModelingToolsColorChannelFilter ChannelFilter [Controls which Color Channels will be affected by Operations. Only enabled Channels are rendered.]`
- `FLinearColor EraseColor [Color to set when using Erase brush]`
- `FLinearColor PaintColor [The Color that will be assigned to painted triangle vertices]`
- `EMeshVertexPaintSecondaryActionType SecondaryActionType [The Brush Operation that will be applied when holding the Shift key when in Painting]`
- `float32 SmoothStrength [Strength of Smooth Brush]`
- `float Strength [The strength of the brush effect when stamped on the mesh]`
- `EMeshVertexPaintInteractionType SubToolType [Painting Operation to apply when left-clicking and dragging]`
- `bool bHardEdges [Create Split Colors / Hard Color Edges at the borders of the painted area. Use Soften operations to un-split.]`
- `bool bIsErasePressureEnabled [Should pressure sensitivity affect Erase brush strength?]`
- `bool bIsPaintPressureEnabled [Should pressure sensitivity affect Paint brush strength?]`

---

