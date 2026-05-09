### FSlatePostBufferUpdateInfo


Struct containing info needed to update a particular buffer

**属性**:

- `ESlatePostRT BufferToUpdate [Buffers that we should update, all of these buffers will be affected by 'bPerformDefaultPostBufferUpdate' if disabled]`
- `USlatePostBufferProcessorUpdater PostParamUpdater [Optional processor updater for buffer, used to update a processor within a frame]`


**方法**:

- `FSlatePostBufferUpdateInfo& opAssign(FSlatePostBufferUpdateInfo Other)`

---

