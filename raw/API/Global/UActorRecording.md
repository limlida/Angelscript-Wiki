### UActorRecording


**属性**:

- `FActorRecordingSettings ActorSettings []`
- `TSoftObjectPtr<AActor> ActorToRecord [The actor we want to record]`
- `FAnimationRecordingSettings AnimationSettings [The settings to apply to this actor's animation]`
- `uint TakeNumber [Specify the take number for the new recording]`
- `UAnimSequence TargetAnimation [The target animation we want to record to]`
- `ULevelSequence TargetLevelSequence [The level sequence to record into]`
- `FText TargetName [Optional target name to record to. If not specified, the actor label will be used]`
- `bool bActive [Whether this actor is active and to be recorded when the 'Record' button is pressed.]`
- `bool bCreateLevelSequence [Whether to create a level sequence for this actor recording]`
- `bool bRecordToPossessable [Whether to record to 'possessable' (i.e. level-owned) or 'spawnable' (i.e. sequence-owned) actors. Defaults to the global setting.]`
- `bool bSpecifyTargetAnimation [Whether we should specify the target animation or auto-create it]`

---

