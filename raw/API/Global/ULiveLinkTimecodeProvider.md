### ULiveLinkTimecodeProvider


Fetch the latest frames from the LiveLink subject and create a Timecode from it.

**属性**:

- `int BufferSize [The number of frame to keep in memory. The provider will not be synchronized until the buffer is full at least once.]`
- `ELiveLinkTimecodeProviderEvaluationType Evaluation [How to evaluate the timecode.]`
- `FFrameRate OverrideFrameRate [Override the frame rate at which this timecode provider will create its timecode value.
By default, we use the subject frame rate.]`
- `FLiveLinkSubjectKey SubjectKey [The specific subject that we listen to.]`
- `bool bOverrideFrameRate []`

---

