### UNarrativeDialogueSequence


Encapsulates a Level Sequence, along with all extra data needed to play that level sequence in the context of a dialogue

**属性**:

- `TWeakObjectPtr<AActor> AnchorActor []`
- `FName AnchorAvatarCustomID [If AnchorAvatar is custom, this is the ID of the avatar to use as the override]`
- `FVector AnchorOriginNudge [Allows you to nudge the shot upwards, downwards, etc. Extra offset applied to shot transform. Applied in speakers transform space.]`
- `EAnchorOriginRule AnchorOriginRule [Sequence origin will be relative to the selected item]`
- `EAnchorRotationRule AnchorRotationRule [Sequence rotation will be relative to the selected item]`
- `TWeakObjectPtr<ACineCameraActor> Cinecam [The cinecam spawned in by the sequence]`
- `FPlateCropSettings CropSettings [Controls the crop settings.]`
- `float32 DegreesYaw180DegreeRule [If using 180 degree rule, how many degrees of yaw to push the shots in either direction]`
- `TWeakObjectPtr<UDialogue> Dialogue []`
- `TWeakObjectPtr<AActor> FocusActor []`
- `FShotTrackingSettings FocusTrackingSettings [What avatar should the camera track on if this is enabled]`
- `FText FriendlyShotName [The sequences to use - one will be selected at random]`
- `TWeakObjectPtr<AActor> Listener []`
- `TWeakObjectPtr<AActor> LookAtActor []`
- `FShotTrackingSettings LookAtTrackingSettings [What avatar should the camera track on if this is enabled]`
- `FMovieSceneSequencePlaybackSettings PlaybackSettings`
- `TWeakObjectPtr<ALevelSequenceActor> SequenceActor []`
- `TArray<ULevelSequence> SequenceAssets [The sequences to use - one will be selected at random]`
- `TWeakObjectPtr<AActor> Speaker []`
- `float32 UnitsY180DegreeRule [If using 180 degree rule, how many degrees of yaw to push the shots in either direction]`
- `bool bDrawDebugFocusPoint [If true the camera will draw a box showing focus point]`
- `bool bShouldRestart [If narrative tries playing this sequence but it already started playing it from an earlier node, should we restart the shot or just let the existing one continue?]`
- `bool bUse180DegreeRule [Force the player and all other speakers to be on opposite sides of the screen using Y-axis movement and Yaw.
               You wouldn't want this enabled for ultra close up shots, or if you want your character to be in the middle of the screen,
               but otherwise you should enable this as the 180 degree rule is a classic cinematography rule]`


**方法**:

- `EndSequence()`  
  Plays the level sequence. Pretty rare you'd ever want to override this in BP but the option is there!
- `FText GetGraphDisplayText()`  
  Define the text that will show up on a node if this event is added to it
- `FTransform GetShotAnchorTransform()`  
  Return the space the sequence will be shot in. Defaults to using the anchor actors head location. This is that if
               different height characters are used, the shot will be lined up correctly regardless of height. Also applies some extra
               offsetting to adhere to the 180 degree rule if bUse180DegreeRule is checked.
- `OnStop()`  
  Called before the shot is stopped and its sequence player is de-initialized.
- `PlaySequence()`  
  Plays the level sequence. Pretty rare you'd ever want to override this in BP but the option is there!

---

