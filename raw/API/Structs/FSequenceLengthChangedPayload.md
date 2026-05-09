### FSequenceLengthChangedPayload


**属性**:

- `FFrameNumber Frame0 [Frame number at which the change in frames has been made]`
- `FFrameNumber Frame1 [Amount of frames which is inserted or removed starting at Frame0]`
- `float32 PreviousLength []`
- `FFrameNumber PreviousNumberOfFrames [Previous playable number of frames for the Model]`
- `float32 T0 []`
- `float32 T1 []`


**方法**:

- `FSequenceLengthChangedPayload& opAssign(FSequenceLengthChangedPayload Other)`

---

