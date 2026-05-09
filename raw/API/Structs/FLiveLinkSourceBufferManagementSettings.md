### FLiveLinkSourceBufferManagementSettings


**属性**:

- `float32 EngineTimeOffset [When evaluating with time: how far back from current time should we read the buffer (in seconds)]`
- `int LatestOffset [When evaluating with latest: how far back from latest frame should we read the buffer]`
- `int MaxNumberOfFrameToBuffered [Maximum number of frames to keep in memory.]`
- `FFrameRate SourceTimecodeFrameRate [What is the source frame rate.
When the refresh rate of the source is bigger than the timecode frame rate, LiveLink will try to generate sub frame numbers.
@note The source should generate the sub frame numbers. Use this setting when the source is not able to do so.
@note The generated sub frame numbers will not be saved by Sequencer.]`
- `float32 TimecodeFrameOffset [When evaluating with timecode: how far back from current timecode should we read the buffer (in TimecodeFrameRate).]`
- `float32 ValidEngineTime [If the frame is older than ValidTime, remove it from the buffer list (in seconds).]`
- `int ValidTimecodeFrame [If the frame timecode is older than ValidTimecodeFrame, remove it from the buffer list (in TimecodeFrameRate).]`
- `bool bGenerateSubFrame []`
- `bool bKeepAtLeastOneFrame [When cleaning the buffer keep at least one frame, even if the frame doesn't matches the other options.]`
- `bool bUseTimecodeSmoothLatest [When evaluating with timecode, align source timecode using a continuous clock offset to do a smooth latest
This means that even if engine Timecode and source Timecode are not aligned, the offset between both clocks
will be tracked to keep them aligned. With an additionnal offset, 1.5 is a good number, you can evaluate
your subject using the latest frame by keeping just enough margin to have a smooth playback and avoid starving.]`
- `bool bValidEngineTimeEnabled [Enabled the ValidEngineTime setting.]`
- `bool bValidTimecodeFrameEnabled [If the frame timecode is older than ValidTimecodeFrame, remove it from the buffer list (in TimecodeFrameRate).]`


**方法**:

- `FLiveLinkSourceBufferManagementSettings& opAssign(FLiveLinkSourceBufferManagementSettings Other)`

---

