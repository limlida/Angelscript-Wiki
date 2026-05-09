### UAutomatedLevelSequenceCapture


**属性**:

- `ULevelSequenceBurnInOptions BurnInOptions`
- `FFrameNumber CustomEndFrame [Frame number to end capturing.]`
- `FFrameNumber CustomStartFrame [Frame number to start capturing.]`
- `float32 DelayBeforeShotWarmUp [The number of seconds to wait (in real-time) at shot boundaries.  Useful for allowing post processing effects to settle down before capturing the animation.]`
- `float32 DelayBeforeWarmUp [The number of seconds to wait (in real-time) before we start playing back the warm up frames.  Useful for allowing post processing effects to settle down before capturing the animation.]`
- `float32 DelayEveryFrame [The number of seconds to wait (in real-time) at every frame.  Useful for allowing post processing effects to settle down before capturing the animation.]`
- `FSoftObjectPath LevelSequenceAsset [A level sequence asset to playback at runtime - used where the level sequence does not already exist in the world.]`
- `FString ShotName [Optional shot name to render. The frame range to render will be set to the shot frame range.]`
- `int WarmUpFrameCount [The number of extra frames to play before the sequence's start frame, to "warm up" the animation.  This is useful if your
          animation contains particles or other runtime effects that are spawned into the scene earlier than your capture start frame]`
- `bool bUseCustomEndFrame [When enabled, the EndFrame setting will override the default ending frame number]`
- `bool bUseCustomStartFrame [When enabled, the StartFrame setting will override the default starting frame number]`
- `bool bWriteEditDecisionList [Whether to write edit decision lists (EDLs) if the sequence contains shots]`
- `bool bWriteFinalCutProXML [Whether to write Final Cut Pro XML files (XMLs) if the sequence contains shots]`

---

