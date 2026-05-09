### UArrowComponent


A simple arrow rendered using lines. Useful for indicating which way an object is facing.

**属性**:

- `FColor ArrowColor [Color to draw arrow]`
- `float32 ArrowLength [Total length of drawn arrow including head]`
- `float32 ArrowSize [Relative size to scale drawn arrow by]`
- `float32 ScreenSize [The size on screen to limit this arrow to (in screen space)]`
- `bool bIsScreenSizeScaled [Set to limit the screen size of this arrow]`
- `bool bTreatAsASprite [If true, don't show the arrow when EngineShowFlags.BillboardSprites is disabled.]`
- `bool bUseInEditorScaling [Whether to use in-editor arrow scaling (i.e. to be affected by the global arrow scale)]`


**方法**:

- `SetArrowColor(FLinearColor NewColor)`  
  Updates the arrow's colour, and tells it to refresh
- `SetArrowFColor(FColor NewColor)`
- `SetArrowLength(float32 NewLength)`
- `SetArrowSize(float32 NewSize)`
- `SetIsScreenSizeScaled(bool bNewValue)`
- `SetScreenSize(float32 NewScreenSize)`
- `SetTreatAsASprite(bool bNewValue)`
- `SetUseInEditorScaling(bool bNewValue)`

---

