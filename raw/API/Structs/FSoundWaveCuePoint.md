### FSoundWaveCuePoint


Struct defining a cue point in a sound wave asset

**属性**:

- `int CuePointID [Unique identifier for the wave cue point]`
- `int64 FrameLength [The frame length of the cue point (non-zero if it's a region)]`
- `int64 FramePosition [The frame position of the cue point]`
- `FString Label [The label for the cue point]`
- `bool bIsLoopRegion [intentionally kept private.
only USoundFactory should modify this value on import]`


**方法**:

- `FSoundWaveCuePoint& opAssign(FSoundWaveCuePoint Other)`

---

