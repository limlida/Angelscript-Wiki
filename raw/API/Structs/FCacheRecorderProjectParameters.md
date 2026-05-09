### FCacheRecorderProjectParameters


**属性**:

- `FString DefaultSlate [The default name to use for the Slate information]`
- `EUpdateClockSource RecordingClockSource [The clock source to use when recording]`
- `bool bCacheTrackRecorderControlsClockTime [If true then take recorder will control the sequencer timing when recording with a fixed editor time step. The delta time is derived by the sequence's target frame rate.
This is useful when recording cache data where frame accuracy is important (e.g. Niagara systems), but should be set to false when dealing with data from external sources (e.g. LiveLink).]`
- `bool bRecordTimecode [If enabled, timecode will be recorded into each actor track]`
- `bool bShowNotifications [Whether to show notification windows or not when recording]`
- `bool bStartAtCurrentTimecode [If enabled, track sections will start at the current timecode. Otherwise, 0.]`


**方法**:

- `FCacheRecorderProjectParameters& opAssign(FCacheRecorderProjectParameters Other)`

---

