### FFrameMetrics


Metrics that correspond to a particular frame

**属性**:

- `float32 FrameDelta [The total amount of time, in seconds, that this specific frame took to render (not accounting for dropped frames)]`
- `int FrameNumber [The index of this frame from the start of the capture, including dropped frames]`
- `int NumDroppedFrames [The number of frames we dropped in-between this frame, and the last one we captured]`
- `float32 TotalElapsedTime [The total amount of time, in seconds, since the capture started]`


**方法**:

- `FFrameMetrics& opAssign(FFrameMetrics Other)`

---

