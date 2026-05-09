### UPostBufferUpdate


Widget that when drawn, will trigger the slate post buffer to update. Does not draw anything itself.
This allows for you to perform layered UI / sampling effects with the GetSlatePost material functions,
by placing this widget after UI you would like to be processed / sampled is drawn.

* No Children

**属性**:

- `TArray<ESlatePostRT> BuffersToUpdate [Buffers that we should update, all of these buffers will be affected by 'bPerformDefaultPostBufferUpdate' if disabled]`
- `TArray<FSlatePostBufferUpdateInfo> UpdateBufferInfos [Buffer to update when this widget is drawn, along with info needed to update that buffer if desired intra-frame]`
- `bool bPerformDefaultPostBufferUpdate [True if we should do the default post buffer update of the scene before any UI.
If any PostBufferUpdate widget has this set as false, be default scene copy / processing will not occur.]`
- `bool bUpdateOnlyPaintArea [True if we should only update the buffer within the bounds of this widget]`

---

