### FMovieSceneSequencePlaybackSettings


Settings for the level sequence player actor.

**属性**:

- `EMovieSceneCompletionModeOverride FinishCompletionStateOverride [If set to something other than none, when a sequence ends, the completion mode of any track sections still active will be overridden
      * by the chosen value, either keep state or restore state. Otherwise, completion mode will be determined by each track section.
      * Note that any track sections that finish before the end of a sequence will have their completion mode determined by the section settings rather than this override.]`
- `FMovieSceneSequenceLoopCount LoopCount [Number of times to loop playback. -1 for infinite, else the number of times to loop before stopping]`
- `float32 PlayRate [The rate at which to playback the animation]`
- `float32 StartTime [Start playback at the specified offset from the start of the sequence's playback range]`
- `FMovieSceneSequenceTickInterval TickInterval [Overridable tick interval for this sequence to update at. When not overridden, the owning actor or component's tick interval will be used]`
- `bool bAutoPlay [Auto-play the sequence when created]`
- `bool bDisableCameraCuts [Disable camera cuts]`
- `bool bDisableLookAtInput [Disable LookAt Input from player during play]`
- `bool bDisableMovementInput [Disable Input from player during play]`
- `bool bDynamicWeighting [Whether to enable dynamic weighting on this player or not]`
- `bool bHideHud [Hide HUD during play]`
- `bool bHidePlayer [Hide Player Pawn during play]`
- `bool bInheritTickIntervalFromOwner [When checked, a custom tick interval can be provided to define how often to update this sequence]`
- `bool bPauseAtEnd [Pause the sequence when playback reaches the end rather than stopping it]`
- `bool bRandomStartTime [Start playback at a random time]`


**方法**:

- `FMovieSceneSequencePlaybackSettings& opAssign(FMovieSceneSequencePlaybackSettings Other)`

---

