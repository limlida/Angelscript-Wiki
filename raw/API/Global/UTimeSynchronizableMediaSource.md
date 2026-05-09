### UTimeSynchronizableMediaSource


Base class for media sources that can be synchronized with the engine's timecode.

**属性**:

- `int FrameDelay [When using Time Synchronization, how many frame back should it read. Capped at 4 frames due to the potential issues with buffer sizes.
Framelocked modes don't support this feature.]`
- `float TimeDelay [When not using Time Synchronization, how far back it time should it read.]`
- `bool bUseTimeSynchronization [Synchronize the media with the engine's timecode.
The media player has be able to read timecode.
The media player will try to play the corresponding frame, base on the frame's timecode value.]`

---

