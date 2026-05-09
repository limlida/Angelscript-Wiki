### ULevelSequenceBurnIn


Base class for level sequence burn ins

**属性**:

- `FLevelSequencePlayerSnapshot FrameInformation [Snapshot of frame information.]`
- `ALevelSequenceActor LevelSequenceActor [The actor to get our burn in frames from]`


**方法**:

- `TSubclassOf<ULevelSequenceBurnInInitSettings> GetSettingsClass() const`  
  Get the settings class to use for this burn in
- `SetSettings(UObject InSettings)`  
  Called when this burn in is receiving its settings

---

