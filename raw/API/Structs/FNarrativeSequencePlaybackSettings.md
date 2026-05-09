### FNarrativeSequencePlaybackSettings


Custom settings that we're adding to the narrative level sequence player.

**属性**:

- `TArray<FNarrativeSequencerBindingConfig> BindingConfigs [The characters we want to bind into the sequence - we'll look for bindings with the NPC ID as the tag, or "Player" as the tag for PlayerCharacters.

      If these are left empty, we'll automatically generate these for you, by looking for any NPCs whose NPCID matches any Tagged Bindings you have in your seqeuence.
      We'll figure out where they need to be at key zero and send them there to create a seamless cinematic.]`
- `EMovieSceneCompletionModeOverride FinishCompletionStateOverride [If set to something other than none, when a sequence ends, the completion mode of any track sections still active will be overridden
      * by the chosen value, either keep state or restore state. Otherwise, completion mode will be determined by each track section.
      * Note that any track sections that finish before the end of a sequence will have their completion mode determined by the section settings rather than this override.]`
- `FMovieSceneSequenceLoopCount LoopCount [Number of times to loop playback. -1 for infinite, else the number of times to loop before stopping]`
- `float32 PlayRate [The rate at which to playback the animation]`
- `float32 StartTime [Start playback at the specified offset from the start of the sequence's playback range]`
- `FGameplayTagContainer StopTags [If any of these tags are added to a bound character we'll stop playback. We'll also prevent playback beginning if any of these tags are present.]`
- `FGameplayTagContainer TagsToApplyWhilstBound [We'll apply these tags to characters when they are bound into this sequence.]`
- `FMovieSceneSequenceTickInterval TickInterval [Overridable tick interval for this sequence to update at. When not overridden, the owning actor or component's tick interval will be used]`
- `bool bAutoPlay [Auto-play the sequence when created]`
- `bool bCanSkip [If true, the cinematic menu will give a skip option to the player when this cinematic is playing.]`
- `bool bDisableCameraCuts [Disable camera cuts]`
- `bool bDisableLookAtInput [Disable LookAt Input from player during play]`
- `bool bDisableMovementInput [Disable Input from player during play]`
- `bool bDynamicWeighting [Whether to enable dynamic weighting on this player or not]`
- `bool bHideEvenEssentialHUDElements [Do we want to hide the essential HUD elements, like quest updates, etc when this is playing.]`
- `bool bHideHud [Hide HUD during play]`
- `bool bHidePlayer [Hide Player Pawn during play]`
- `bool bInheritTickIntervalFromOwner [When checked, a custom tick interval can be provided to define how often to update this sequence]`
- `bool bPauseAtEnd [Pause the sequence when playback reaches the end rather than stopping it]`
- `bool bRandomStartTime [Start playback at a random time]`
- `bool bShowCinematicBars [Do we want to show cinematic black bars?]`
- `bool bStopDialogue [If dialogue is playing should we stop it before starting the cinematic?]`
- `bool bUpdateControlRotationToPawn [If true, will keep control rotation yaw matched with the controlled pawns yaw. This is useful when we blend out of the sequence
      , if you leave this as false the camera will go back to where we were pre-sequence, which often isn't what you want.]`
- `bool bWalkBindingsToStartTransform [If true, we'll walk any characters to their transform at frame 0 of the animation. This is highly useful for creating a seamless gameplay-cinematic transition.
      If you want the characters to snap to position immediately turn this off.]`


**方法**:

- `FNarrativeSequencePlaybackSettings& opAssign(FNarrativeSequencePlaybackSettings Other)`

---

