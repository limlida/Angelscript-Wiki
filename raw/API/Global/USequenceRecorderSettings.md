### USequenceRecorderSettings


**属性**:

- `FSequenceRecorderActorFilter ActorFilter [Filter to check spawned actors against to see if they should be recorded]`
- `TArray<FPropertiesToRecordForActorClass> ActorsAndPropertiesToRecord [The properties to record for specified actors. Actor classes specified here will be recorded. If an actor does not contain one of these properties it will be ignored.]`
- `FString AnimationSubDirectory [The name of the subdirectory animations will be placed in. Leave this empty to place into the same directory as the sequence base path]`
- `float32 AudioGain [Gain in decibels to apply to recorded audio]`
- `FString AudioSubDirectory [The name of the subdirectory audio will be placed in. Leave this empty to place into the same directory as the sequence base path]`
- `FText AudioTrackName [Name of the recorded audio track name]`
- `TArray<FPropertiesToRecordForClass> ClassesAndPropertiesToRecord [The properties to record for specified classes. Component classes specified here will be recorded. If an actor does not contain one of these classes it will be ignored.]`
- `FAnimationRecordingSettings DefaultAnimationSettings [Default animation settings which are used to initialize all new actor recording's animation settings]`
- `float32 GlobalTimeDilation [Global Time dilation to set the world to when recording starts. Useful for playing back a scene in slow motion.]`
- `float32 NearbyActorRecordingProximity [Proximity to currently recorded actors to record newly spawned actors.]`
- `TArray<FSettingsForActorClass> PerActorSettings [Settings applied to actors of a specified class]`
- `EAudioRecordingMode RecordAudio [Whether to record audio alongside animation or not]`
- `float32 RecordingDelay [Delay that we will use before starting recording]`
- `float32 SequenceLength [The length of the recorded sequence]`
- `bool bAllowLooping [Allow the recording to be looped. Subsequence recorded assets will be saved to unique filenames.]`
- `bool bAutoSaveAsset [Whether to auto-save asset when recording is completed. Defaults to false]`
- `bool bCreateLevelSequence [Whether to create a level sequence when recording. Actors and animations will be inserted into this sequence]`
- `bool bIgnoreTimeDilation [Should Sequence Recorder ignore global time dilation? If true recorded animations will only be as long as they would have been without global time dilation.]`
- `bool bImmersiveMode [Whether to maximize the viewport when recording]`
- `bool bRecordNearbySpawnedActors [Whether to record nearby spawned actors. If an actor matches a class in the ActorFilter, this state will be bypassed.]`
- `bool bRecordSequencerSpawnedActors [Whether to record actors that are spawned by sequencer itself (this is usually disabled as results can be unexpected)]`
- `bool bRecordWorldSettingsActor [Whether to record the world settings actor in the sequence (some games use this to attach world SFX)]`
- `bool bReduceKeys [Whether to remove keyframes within a tolerance from the recorded tracks]`
- `bool bReplaceRecordedAudio [Replace existing recorded audio with any newly recorded audio]`
- `bool bSplitAudioChannelsIntoSeparateTracks [Whether or not to split mic channels into separate audio tracks. If not true, a max of 2 input channels is supported.]`

---

