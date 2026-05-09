### USystemTimeTimecodeProvider


Converts the current system time to timecode, relative to a provided frame rate.

**属性**:

- `FFrameRate FrameRate [The frame rate at which the timecode value will be generated.]`
- `bool bGenerateFullFrame [When generating frame time, should we generate full frame without subframe value.]`
- `bool bUseHighPerformanceClock [Use the high performance clock instead of the system time to generate the timecode value.
Using the high performance clock is faster but will make the value drift over time.]`

---

