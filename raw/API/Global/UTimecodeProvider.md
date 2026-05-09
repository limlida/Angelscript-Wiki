### UTimecodeProvider


A class responsible of fetching a timecode from a source.
Note, FApp::GetTimecode and FApp::GetTimecodeFramerate should be used to retrieve
the current system Timecode and Framerate.

**属性**:

- `float32 FrameDelay [Number of frames to subtract from the qualified frame time when GetDelayedQualifiedFrameTime or GetDelayedTimecode is called.
@see GetDelayedQualifiedFrameTime, GetDelayedTimecode]`


**方法**:

- `FetchAndUpdate()`  
  Update the state of the provider. Call it to ensure timecode and state are updated.
It is suggested to fetch timecode from its source and cache it for the getters.
- `bool FetchTimecode(FQualifiedFrameTime& OutFrameTime)`  
  Fetch current timecode from its source. e.g. From hardware/network/file/etc.
It is recommended to cache the fetched timecode.
- `FQualifiedFrameTime GetDelayedQualifiedFrameTime() const`  
  Return current frame time with FrameDelay applied.
Only assume valid when GetSynchronizationState() returns Synchronized.
- `FTimecode GetDelayedTimecode() const`  
  Return the delayed frame time converted into a timecode value.
- `FFrameRate GetFrameRate() const`  
  Return the frame rate of the frame time.
- `FQualifiedFrameTime GetQualifiedFrameTime() const`  
  Return current frame time.
Since it may be called several times per frame, it is suggested to return a cached value.
- `ETimecodeProviderSynchronizationState GetSynchronizationState() const`  
  The state of the TimecodeProvider and if it's currently synchronized and the Timecode and FrameRate getters are valid.
- `FTimecode GetTimecode() const`  
  Return the frame time converted into a timecode value.

---

