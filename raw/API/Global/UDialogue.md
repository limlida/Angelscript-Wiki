### UDialogue


Created at runtime, but also used as a template, similar to UWidgetTrees in UWidgetBlueprints.

**属性**:

- `UNarrativeDialogueSequence CurrentDialogueSequence [Current dialogue sequence being played]`
- `FDialogueLine CurrentLine [The current line that is being played]`
- `AActor CurrentListenerAvatar [The current listener avatar, if the speaker is directing their line at someone]`
- `UDialogueNode CurrentNode [The current dialogue node narrative is playing]`
- `APlayerState CurrentPartySpeakerAvatar [In party dialogue, we need a way to point the camera at the speaker instead of our own one, we do so via this variable]`
- `FSpeakerInfo CurrentSpeaker [The current speaker that is talking]`
- `AActor CurrentSpeakerAvatar [The current speaker avatar that is talking]`
- `UNarrativeDialogueSequence DefaultDialogueShot [If a shot, its speaker, etc doesn't have a shot the dialogue will use this one as a default]`
- `FName DefaultHeadBoneName [* By default Narrative will aim the camera at the bone named "head" - this is the name of the UE4/5 skeletons head bone so will work with most games.
* If your head bone has a different name, you can input it here - if you need anything more complex simply override the GetSpeakerHeadLocation function
* and return the location of your avatars head.]`
- `UAudioComponent DialogueAudio [Audio component responsible for playing any audio during the dialogue]`
- `float32 DialogueBlendOutTime [Time to blend back into the players camera after dialogue ends]`
- `TSubclassOf<UCameraShakeBase> DialogueCameraShake [Camera shake the dialogue camera will play]`
- `ALevelSequenceActor DialogueSequencePlayer [Sequence actor responsible for playing any cinematic shots during the dialogue]`
- `USoundAttenuation DialogueSoundAttenuation [The attenuation to use for dialogue lines]`
- `UAnimMontage DialogueSpeakerMontage [Current montage playing on the current speaker actor]`
- `float32 EndDialogueDist [if > 0, Dialogue will auto-end if player goes greater than this distance from any speaker in the dialgue.]`
- `UTalesComponent OwningComp []`
- `APlayerController OwningController []`
- `APawn OwningPawn []`
- `TArray<FPlayerSpeakerInfo> PartySpeakerInfo [For parties, each player in the party gets their own speaker info]`
- `FTransform PlayerAutoAdjustTransform [In 1-on-1 dialogue, we can automatically adjust your players position so they stand the desired amount of units away.]`
- `FPlayerSpeakerInfo PlayerSpeakerInfo [The speaker info for our player]`
- `int Priority [Priority. Lower values are more important. If a dialogue attempts to play with a higher priority it will be discarded.]`
- `TArray<FSpeakerInfo> Speakers [All the NPC speakers in this dialogue - for the player fill out the PlayerSpeakerInfo below!]`
- `bool bAdjustPlayerTransform [* If enabled, we'll move the player to stand in front of the first speaker.]`
- `bool bAutoRotateSpeakers [If enabled, narrative will automatically rotate the speakers to face whoever is currently talking.]`
- `bool bAutoStopMovement [* If selected, automatically stop the characters movement when the dialogue begins. This is useful because
* a camera shot will automatically play but then if the speaker is still moving, the shot won't be lined up correctly]`
- `bool bCanBeExited [If false, default UI will disallow closing of the dialogue with ESC, and you'll need to wait for it to end]`
- `bool bFreeMovement [If true, narrative UI won't show mouse cursor and set input mode to UI - you'll still be able to control your player.]`
- `bool bShowCinematicBars [If true, dialogue will add cinematic bars to scree]`
- `bool bUnskippable [If true, the player won't be able to skip lines in this dialogue.]`


**方法**:

- `AdjustPlayerTransform()`  
  Auto-adjust the player in 1-on-1 dialogue so we're standing in front of them even if we started talking in a different location
- `bool CanSkipCurrentLine() const`  
  Return true if the current dialogue line can be skipped, or if we can ask the server to do a skip
- `bool CanSkipDialogue() const`  
  * Return whether or not we can skip lines in this dialogue or not
- `DestroySpeakerAvatar(FSpeakerInfo Info, AActor SpeakerAvatar)`  
  * Clean up a given actor from the world
- `EndCurrentLine()`  
  Ends the current dialogue line
- `FinishDialogueNode(UDialogueNode Node, FDialogueLine Line, FSpeakerInfo Speaker, AActor SpeakerActor, AActor ListenerActor)`  
  * Finish playing a dialogue node. Stops the currently playing audio, montage, etc.
- `FinishNPCDialogue()`
- `FinishPlayerDialogue()`
- `AActor GetAvatar(FName SpeakerID) const`  
  Grab the avatar for a given speaker, if one exists.
- `FVector GetConversationCenterPoint() const`  
  Return the average location of all of the speakers in the dialogue
- `float32 GetLineDuration(UDialogueNode Node, FDialogueLine Line)`  
  Returns how long narrative should wait before moving onto the next line. Returning -1 causes the line to last forever, until
       *
       * Narrative has a good built in line duration system so its rare you'd ever need to override, however if you need to the the option is here.
- `TArray<UDialogueNode> GetNodes() const`
- `AActor GetPlayerAvatar() const`  
  / Sometimes our actual pawn shows up in dialogues, other times we use a special avatar actor that is spawned in. Return whichever one is being used.
- `FVector GetSpeakerHeadLocation(AActor Actor) const`  
  * Return the location of the actors head - basically the location the dialogue camera will aim itself at.
*
* By default, narrative will check for a skeletal mesh tagged with "body" with a bone/socket named "head", and if this cannot be found, it will
* fall back to using GetActorEyesViewPoint.
*
* However, you can override this function if you need more complex functionality
- `FString GetStringVariable(const UDialogueNode Node, FDialogueLine Line, FString VariableName)`  
  Allows you to use variables in your dialogue, ie Hello {PlayerName}.

Simply override this function, then check the value of variable name and return whatever value you like!

ie if(VariableName == "PlayerName") {return OwningPawn->GetUsername();}; - then Hello {PlayerName}! will automatically become Hello xXNoobPwner420Xx! etc
- `bool IsPartyDialogue() const`  
  Return true if this is a party dialogue, false if solo.
- `OnBeginDialogue()`  
  Called when the dialogue Begins.
- `OnEndDialogue()`  
  Called when the dialogue ends.
- `AActor LinkSpeakerAvatar(FSpeakerInfo Info, int Idx)`  
  * Narrative needs to know which speaker ID links to which Speaker Avatar, so it knows where to point the camera, who to play
* animations on, and much more. This function links each Speaker to its Speaker Avatar. It does this by spawning the actor
* if an AvatarActorClass is set, or by finding an actor in the world with the SpeakerID added as a tag.
*
* Finally, we still weren't able to find an Avatar to link to the speaker, we'll fall back to the DefaultNPCAvatar for NPCs or
* the players Pawn for Player nodes.
*
* If that doesn't work for your game, you can override this function
- `OnNPCDialogueLineFinished(UDialogueNode_NPC Node, FDialogueLine DialogueLine, FSpeakerInfo Speaker)`  
  Called when an NPC Dialogue line is finished
- `OnNPCDialogueLineStarted(UDialogueNode_NPC Node, FDialogueLine DialogueLine, FSpeakerInfo Speaker)`  
  Called when an NPC Dialogue line starts
- `OnPlayerDialogueLineFinished(UDialogueNode_Player Node, FDialogueLine DialogueLine)`  
  Called when a player dialogue line has started
- `OnPlayerDialogueLineStarted(UDialogueNode_Player Node, FDialogueLine DialogueLine)`  
  Called when a player dialogue line has started
- `PlayDialogueAnimation(UDialogueNode Node, FDialogueLine Line, AActor Speaker, AActor Listener)`  
  * Play a dialogue animation. Override this if you want to change how narrative plays animations
*
* Default implementation just plays the supplied anim montage on the NPC actor you gave it.
*
* Speaker and Listener are the avatar actors for the speaker and listener that were spawned by narrative, or OwningPawn/NPCActor
- `PlayDialogueNode(UDialogueNode Node, FDialogueLine Line, FSpeakerInfo Speaker, AActor SpeakerActor, AActor ListenerActor)`  
  * Play a dialogue node. Narrative plays some audio, a montage, and updates the camera by default
* however if you want modify this behavior or add extra behavior you can override this function!
- `PlayDialogueSequence(UNarrativeDialogueSequence Sequence, AActor Speaker, AActor Listener)`  
  Tell the dialogue sequence player to start or stop playing a dialogue shot.
- `PlayDialogueSound(FDialogueLine Line, AActor Speaker, AActor Listener)`  
  * Play a dialogue sound. Override this if you want to change how narrative plays sounds.
*
* Default implementation just plays the sound at the location of the NPC, or in 2D if no NPC was supplied.
- `PlayNPCDialogue(UDialogueNode_NPC NPCReply, FDialogueLine Line, FSpeakerInfo Speaker)`  
  * Allows you to override how an NPC dialogue node is played. Narrative plays some audio, a montage, and plays a cinematic shot by default,
* however if you want to do even more you can override this function
- `PlayPlayerDialogue(UDialogueNode_Player PlayerReply, FDialogueLine Line)`  
  * Allows you to override how an Player dialogue node is played. Narrative plays some audio, a montage, and plays a cinematic shot by default,
* however if you want modify this behavior or add extra behavior you can override this function
- `bool SkipCurrentLine()`  
  Skips the current dialogue line, providing it can be skipped
- `StopDialogueAnimation()`  
  * stop any animations that were playing on the speaker avatar
- `StopDialogueSequence()`
- `TickDialogue(float DeltaTime)`  
  Useful when dialogues need to do something every tick
- `bool WantsCinematicBars() const`  
  * Return whether or not we want to show black cinematic bars for duration of the dialogue.
* By default we'll show them if the dialogue isn't a free movement dialogue - feel free to override this.

---

