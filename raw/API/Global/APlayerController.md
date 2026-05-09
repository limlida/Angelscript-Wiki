### APlayerController


PlayerControllers are used by human players to control Pawns.

ControlRotation (accessed via GetControlRotation()), determines the aiming
orientation of the controlled Pawn.

In networked games, PlayerControllers exist on the server for every player-controlled pawn,
and also on the controlling client's machine. They do NOT exist on a client's
machine for pawns controlled by remote players elsewhere on the network.

@see https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Controller/PlayerController/

**属性**:

- `TSubclassOf<UCheatManager> CheatClass [Class of my CheatManager.
@see CheatManager for more information about when it will be instantiated.]`
- `UCheatManager CheatManager [Object that manages "cheat" commands.

By default:
      - In Shipping configurations, the manager is always disabled because UE_WITH_CHEAT_MANAGER is 0
  - When playing in the editor, cheats are always enabled
  - In other cases, cheats are enabled by default in single player games but can be forced on with the EnableCheats console command

This behavior can be changed either by overriding APlayerController::EnableCheats or AGameModeBase::AllowCheats.]`
- `TArray<FKey> ClickEventKeys [List of keys that will cause click events to be forwarded, default to left click]`
- `ECollisionChannel CurrentClickTraceChannel [Trace channel currently being used for determining what world object was clicked on.]`
- `EMouseCursor CurrentMouseCursor [Currently visible mouse cursor]`
- `ECollisionChannel DefaultClickTraceChannel [Default trace channel used for determining what world object was clicked on.]`
- `EMouseCursor DefaultMouseCursor [Type of mouse cursor to show by default]`
- `float32 HitResultTraceDistance [Distance to trace when computing click events]`
- `TSubclassOf<UPlayerInput> OverridePlayerInputClass [If set, then this UPlayerInput class will be used instead of the Input Settings' DefaultPlayerInputClass]`
- `APlayerCameraManager PlayerCameraManager [Camera manager associated with this Player Controller.]`
- `TSubclassOf<APlayerCameraManager> PlayerCameraManagerClass [PlayerCamera class should be set for each game, otherwise Engine.PlayerCameraManager is used]`
- `float32 SmoothTargetViewRotationSpeed [Interp speed for blending remote view rotation for smoother client updates]`
- `FColor StreamingSourceDebugColor [Color used for debugging.]`
- `EStreamingSourcePriority StreamingSourcePriority [PlayerController streaming source priority.]`
- `TArray<FStreamingSourceShape> StreamingSourceShapes [Optional aggregated shape list used to build a custom shape for the streaming source. When empty, fallbacks sphere shape with a radius equal to grid's loading range.]`
- `bool bAutoManageActiveCameraTarget [True to allow this player controller to manage the camera target for you,
typically by using the possessed pawn as the camera target. Set to false
if you want to manually control the camera target.]`
- `bool bEnableClickEvents [Whether actor/component click events should be generated.]`
- `bool bEnableMotionControls [Whether or not to consider input from motion sources (tilt, acceleration, etc)]`
- `bool bEnableMouseOverEvents [Whether actor/component mouse over events should be generated.]`
- `bool bEnableStreamingSource [Whether the PlayerController should be used as a World Partiton streaming source.]`
- `bool bEnableTouchEvents [Whether actor/component touch events should be generated.]`
- `bool bEnableTouchOverEvents [Whether actor/component touch over events should be generated.]`
- `bool bForceFeedbackEnabled`
- `bool bPlayerIsWaiting [True if PlayerController is currently waiting for the match to start or to respawn. Only valid in Spectating state.]`
- `bool bShouldPerformFullTickWhenPaused [Whether we fully tick when the game is paused, if our tick function is allowed to do so. If false, we do a minimal update during the tick.]`
- `bool bShowMouseCursor [Whether the mouse cursor should be displayed.]`
- `bool bStreamingSourceShouldActivate [Whether the PlayerController streaming source should activate cells after loading.]`
- `bool bStreamingSourceShouldBlockOnSlowStreaming [Whether the PlayerController streaming source should block on slow streaming.]`


**方法**:

- `SetPlayer(UPlayer InPlayer)`
- `ULocalPlayer GetLocalPlayer() const`
- `ActivateTouchInterface(UTouchInterface NewTouchInterface)`  
  Activates a new touch interface for this player controller
- `AddPitchInput(float32 Val)`  
  Add Pitch (look up) input. This value is multiplied by InputPitchScale.
@param Val Amount to add to Pitch. This value is multiplied by InputPitchScale.
- `AddRollInput(float32 Val)`  
  Add Roll input. This value is multiplied by InputRollScale.
@param Val Amount to add to Roll. This value is multiplied by InputRollScale.
- `AddYawInput(float32 Val)`  
  Add Yaw (turn) input. This value is multiplied by InputYawScale.
@param Val Amount to add to Yaw. This value is multiplied by InputYawScale.
- `bool CanRestartPlayer()`  
  Returns true if this controller thinks it's able to restart. Called from GameModeBase::PlayerCanRestart
- `ClearAudioListenerAttenuationOverride()`
- `ClearAudioListenerOverride()`  
  Clear any overrides that have been applied to audio listener
- `ClientAckTimeDilation(float32 TimeDilation, int ServerStep)`  
  Client receives the time dilation value it needs to use to keep its ServerFrame to LocalFrame offset in sync
- `ClientAddTextureStreamingLoc(FVector InLoc, float32 Duration, bool bOverrideLocation)`  
  Adds a location to the texture streaming system for the specified duration.
- `ClientCancelPendingMapChange()`  
  Tells client to cancel any pending map change.
- `ClientCapBandwidth(int Cap)`  
  Set CurrentNetSpeed to the lower of its current value and Cap.
- `ClientClearCameraLensEffects()`  
  Removes all Camera Lens Effects.
- `ClientCommitMapChange()`  
  Actually performs the level transition prepared by PrepareMapChange().
- `ClientEnableNetworkVoice(bool bEnable)`  
  Tell the client to enable or disable voice chat (not muting)
@param bEnable enable or disable voice chat
- `ClientEndOnlineSession()`  
  Notify client that the session is about to start
- `ClientFlushLevelStreaming()`  
  Tells the client to block until all pending level streaming actions are complete
happens at the end of the tick
primarily used to force update the client ASAP at join time
- `ClientForceGarbageCollection()`  
  Forces GC at the end of the tick on the client
- `ClientGameEnded(AActor EndGameFocus, bool bIsWinner)`  
  Replicated function called by GameHasEnded().
@param       EndGameFocus - actor to view with camera
@param       bIsWinner - true if this controller is on winning team
- `ClientGotoState(FName NewState)`  
  Server uses this to force client into NewState .
@Note ALL STATE NAMES NEED TO BE DEFINED IN name table in UnrealNames.h to be correctly replicated (so they are mapped to the same thing on client and server).
- `ClientIgnoreLookInput(bool bIgnore)`  
  Calls IgnoreLookInput on client
- `ClientIgnoreMoveInput(bool bIgnore)`  
  Calls IgnoreMoveInput on client
- `ClientMessage(FString S, FName Type, float32 MsgLifeTime)`  
  Outputs a message to HUD
@param S - message to display
@param Type - @todo document
@param MsgLifeTime - Optional length of time to display 0 = default time
- `ClientMutePlayer(FUniqueNetIdRepl PlayerId)`  
  Tell the client to mute a player for this controller
@param PlayerId player id to mute
- `ClientPlaySound(USoundBase Sound, float32 VolumeMultiplier, float32 PitchMultiplier)`  
  Play sound client-side (so only the client will hear it)
@param Sound - Sound to play
@param VolumeMultiplier - Volume multiplier to apply to the sound
@param PitchMultiplier - Pitch multiplier to apply to the sound
- `ClientPlaySoundAtLocation(USoundBase Sound, FVector Location, float32 VolumeMultiplier, float32 PitchMultiplier)`  
  Play sound client-side at the specified location
@param Sound - Sound to play
@param Location - Location to play the sound at
@param VolumeMultiplier - Volume multiplier to apply to the sound
@param PitchMultiplier - Pitch multiplier to apply to the sound
- `ClientPrepareMapChange(FName LevelName, bool bFirst, bool bLast)`  
  Asynchronously loads the given level in preparation for a streaming map transition.
the server sends one function per level name since dynamic arrays can't be replicated
@param LevelNames - the names of the level packages to load. LevelNames[0] will be the new persistent (primary) level
@param bFirst - whether this is the first item in the list (so clear the list first)
@param bLast - whether this is the last item in the list (so start preparing the change after receiving it)
- `ClientPrestreamTextures(AActor ForcedActor, float32 ForceDuration, bool bEnableStreaming, int CinematicTextureGroups)`  
  Forces the streaming system to disregard the normal logic for the specified duration and
instead always load all mip-levels for all textures used by the specified actor.
@param ForcedActor           - The actor whose textures should be forced into memory.
@param ForceDuration         - Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic.
@param bEnableStreaming      - Whether to start (true) or stop (false) streaming
@param CinematicTextureGroups        - Bitfield indicating which texture groups that use extra high-resolution mips
- `ClientReceiveLocalizedMessage(TSubclassOf<ULocalMessage> Message, int Switch, APlayerState RelatedPlayerState_1, APlayerState RelatedPlayerState_2, UObject OptionalObject)`  
  send client localized message id
- `ClientRepObjRef(UObject Object)`  
  Development RPC for testing object reference replication
- `ClientReset()`  
  Tell client to reset the PlayerController
- `ClientRestart(APawn NewPawn)`  
  Tell client to restart the level
- `ClientRetryClientRestart(APawn NewPawn)`  
  Assign Pawn to player, but avoid calling ClientRestart if we have already accepted this pawn
- `ClientReturnToMainMenuWithTextReason(FText ReturnReason)`  
  Return the client to the main menu gracefully
- `ClientSetBlockOnAsyncLoading()`  
  Tells the client to block until all pending level streaming actions are complete.
Happens at the end of the tick primarily used to force update the client ASAP at join time.
- `ClientSetCameraFade(bool bEnableFading, FColor FadeColor, FVector2D FadeAlpha, float32 FadeTime, bool bFadeAudio, bool bHoldWhenFinished)`  
  Tell client to fade camera
@Param bEnableFading - true if we should apply FadeColor/FadeAmount to the screen
@Param FadeColor - Color to fade to
@Param FadeAlpha - Contains the start fade (X) and end fade (Y) values to apply. A start fade of less than 0 will use the screen's current fade value
@Param FadeTime - length of time for fade to occur over
@Param bFadeAudio - true to apply fading of audio alongside the video
@param bHoldWhenFinished - True for fade to hold at the ToAlpha until fade is disabled
- `ClientSetCameraMode(FName NewCamMode)`  
  Replicated function to set camera style on client
@param       NewCamMode, name defining the new camera mode
- `ClientSetCinematicMode(bool bInCinematicMode, bool bAffectsMovement, bool bAffectsTurning, bool bAffectsHUD)`  
  Called by the server to synchronize cinematic transitions with the client
- `ClientSetForceMipLevelsToBeResident(UMaterialInterface Material, float32 ForceDuration, int CinematicTextureGroups)`  
  Forces the streaming system to disregard the normal logic for the specified duration and
instead always load all mip-levels for all textures used by the specified material.

@param Material              - The material whose textures should be forced into memory.
@param ForceDuration - Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic.
@param CinematicTextureGroups        - Bitfield indicating which texture groups that use extra high-resolution mips
- `ClientSetHUD(TSubclassOf<AHUD> NewHUDClass)`  
  Set the client's class of HUD and spawns a new instance of it. If there was already a HUD active, it is destroyed.
- `ClientSetSpectatorWaiting(bool bWaiting)`  
  Indicate that the Spectator is waiting to join/respawn.
- `ClientSetViewTarget(AActor A, FViewTargetTransitionParams TransitionParams)`  
  Set the view target
@param A - new actor to set as view target
@param TransitionParams - parameters to use for controlling the transition
- `ClientSpawnGenericCameraLensEffect(TSubclassOf<AActor> LensEffectEmitterClass)`  
  Spawn a camera lens effect (e.g. blood).
- `ClientStartCameraShake(TSubclassOf<UCameraShakeBase> Shake, float32 Scale = 1.000000, ECameraShakePlaySpace PlaySpace = ECameraShakePlaySpace :: CameraLocal, FRotator UserPlaySpaceRot = FRotator ( ))`  
  Play Camera Shake
@param Shake - Camera shake animation to play
@param Scale - Scalar defining how "intense" to play the anim
@param PlaySpace - Which coordinate system to play the shake in (used for CameraAnims within the shake).
@param UserPlaySpaceRot - Matrix used when PlaySpace = CAPS_UserDefined
- `ClientStartCameraShakeFromSource(TSubclassOf<UCameraShakeBase> Shake, UCameraShakeSourceComponent SourceComponent)`  
  Play Camera Shake localized to a given source
@param Shake - Camera shake animation to play
@param SourceComponent - The source from which the camera shakes originates
- `ClientStartOnlineSession()`  
  Notify client that the session is starting
- `ClientStopCameraShake(TSubclassOf<UCameraShakeBase> Shake, bool bImmediately = true)`  
  Stop camera shake on client.
- `ClientStopCameraShakesFromSource(UCameraShakeSourceComponent SourceComponent, bool bImmediately = true)`  
  Stop camera shake on client.
- `ClientStopForceFeedback(UForceFeedbackEffect ForceFeedbackEffect, FName Tag)`  
  Stops a playing force feedback pattern
@param       ForceFeedbackEffect             If set only patterns from that effect will be stopped
@param       Tag                                             If not none only the pattern with this tag will be stopped
- `ClientTeamMessage(APlayerState SenderPlayerState, FString S, FName Type, float32 MsgLifeTime)`  
  @todo document
- `ClientTravelInternal(FString URL, ETravelType TravelType, bool bSeamless, FGuid MapPackageGuid)`  
  Internal clientside implementation of ClientTravel - use ClientTravel to call this

@param URL                           A string containing the mapname (or IP address) to travel to, along with option key/value pairs
@param TravelType            specifies whether the client should append URL options used in previous travels; if true is specified
                                                     for the bSeamlesss parameter, this value must be TRAVEL_Relative.
@param bSeamless                     Indicates whether to use seamless travel (requires TravelType of TRAVEL_Relative)
@param MapPackageGuid        The GUID of the map package to travel to - this is used to find the file when it has been autodownloaded,
                                                     so it is only needed for clients
- `ClientUnmutePlayer(FUniqueNetIdRepl PlayerId)`  
  Tell the client to unmute a player for this controller
@param PlayerId player id to unmute
- `ClientUnmutePlayers(TArray<FUniqueNetIdRepl> PlayerIds)`  
  Tell the client to unmute an array of players for this controller
@param PlayerIds player ids to unmute
- `ClientVoiceHandshakeComplete()`  
  Tells the client that the server has all the information it needs and that it
is ok to start sending voice packets. The server will already send voice packets
when this function is called, since it is set server side and then forwarded

NOTE: This is done as an RPC instead of variable replication because ordering matters
- `ClientWasKicked(FText KickReason)`  
  Notify client they were kicked from the server
- `bool DeprojectMousePositionToWorld(FVector& WorldLocation, FVector& WorldDirection) const`  
  Convert current mouse 2D position to World Space 3D position and direction. Returns false if unable to determine value. *
- `bool DeprojectScreenPositionToWorld(float32 ScreenX, float32 ScreenY, FVector& WorldLocation, FVector& WorldDirection) const`  
  Convert 2D screen position to World Space 3D position and direction. Returns false if unable to determine value. *
- `float32 GetDeprecatedInputPitchScale() const`
- `float32 GetDeprecatedInputRollScale() const`
- `float32 GetDeprecatedInputYawScale() const`
- `FVector GetFocalLocation() const`  
  Returns the location the PlayerController is focused on.
 If there is a possessed Pawn, returns the Pawn's location.
 If there is a spectator Pawn, returns that Pawn's location.
 Otherwise, returns the PlayerController's spawn location (usually the last known Pawn location after it has died).
- `bool GetHitResultUnderCursorByChannel(ETraceTypeQuery TraceChannel, bool bTraceComplex, FHitResult& HitResult) const`  
  Performs a collision query under the mouse cursor, looking on a trace channel
- `bool GetHitResultUnderCursorForObjects(TArray<EObjectTypeQuery> ObjectTypes, bool bTraceComplex, FHitResult& HitResult) const`  
  Performs a collision query under the mouse cursor, looking for object types
- `bool GetHitResultUnderFingerByChannel(ETouchIndex FingerIndex, ETraceTypeQuery TraceChannel, bool bTraceComplex, FHitResult& HitResult) const`  
  Performs a collision query under the finger, looking on a trace channel
- `bool GetHitResultUnderFingerForObjects(ETouchIndex FingerIndex, TArray<EObjectTypeQuery> ObjectTypes, bool bTraceComplex, FHitResult& HitResult) const`  
  Performs a collision query under the finger, looking for object types
- `AHUD GetHUD() const`  
  Gets the HUD currently being used by this player controller
- `float32 GetInputAnalogKeyState(FKey Key) const`  
  Returns the analog value for the given key/button.  If analog isn't supported, returns 1 for down and 0 for up.
- `GetInputAnalogStickState(EControllerAnalogStick WhichStick, float32& StickX, float32& StickY) const`  
  Retrieves the X and Y displacement of the given analog stick.
- `float32 GetInputKeyTimeDown(FKey Key) const`  
  Returns how long the given key/button has been down.  Returns 0 if it's up or it just went down this frame.
- `GetInputMotionState(FVector& Tilt, FVector& RotationRate, FVector& Gravity, FVector& Acceleration) const`  
  Retrieves the current motion state of the player's input device
- `GetInputMouseDelta(float32& DeltaX, float32& DeltaY) const`  
  Retrieves how far the mouse moved this frame.
- `GetInputTouchState(ETouchIndex FingerIndex, float32& LocationX, float32& LocationY, bool& bIsCurrentlyPressed) const`  
  Retrieves the X and Y screen coordinates of the specified touch key. Returns false if the touch index is not down
- `FVector GetInputVectorKeyState(FKey Key) const`  
  Returns the vector value for the given key/button.
- `bool GetMousePosition(float32& LocationX, float32& LocationY) const`  
  Retrieves the X and Y screen coordinates of the mouse cursor. Returns false if there is no associated mouse device
- `TSubclassOf<UPlayerInput> GetOverridePlayerInputClass() const`
- `FPlatformUserId GetPlatformUserId() const`  
  Returns the platform user that is assigned to this Player Controller's Local Player.
If there is no local player, then this will return PLATFORMUSERID_NONE
- `ASpectatorPawn GetSpectatorPawn() const`  
  Get the Pawn used when spectating. nullptr when not spectating.
- `GetStreamingSourceLocationAndRotation(FVector& OutLocation, FRotator& OutRotation) const`  
  Gets the streaming source location and rotation.
Default implementation returns APlayerController::GetPlayerViewPoint but can be overriden in child classes.
- `EStreamingSourcePriority GetStreamingSourcePriority() const`  
  Gets the streaming source priority.
Default implementation returns StreamingSourcePriority but can be overriden in child classes.
@return the streaming source priority.
- `GetStreamingSourceShapes(TArray<FStreamingSourceShape>& OutShapes) const`  
  Gets the streaming source priority.
Default implementation returns StreamingSourceShapes but can be overriden in child classes.
@return the streaming source priority.
- `GetViewportSize(int& SizeX, int& SizeY) const`  
  Helper to get the size of the HUD canvas for this player controller.  Returns 0 if there is no HUD
- `bool IsInputKeyDown(FKey Key) const`  
  Returns true if the given key/button is pressed on the input of the controller (if present)
- `bool IsPrimaryPlayer() const`  
  Wrapper for determining whether this player is the first player on their console.
@return      true if this player is not using splitscreen, or is the first player in the split-screen layout.
- `bool IsStreamingSourceEnabled() const`  
  Whether the PlayerController should be used as a World Partiton streaming source.
Default implementation returns bEnableStreamingSource but can be overriden in child classes.
@return true if it should.
- `ClientPlayForceFeedback(UForceFeedbackEffect ForceFeedbackEffect, FName Tag, bool bLooping, bool bIgnoreTimeDilation, bool bPlayWhilePaused)`  
  Play a force feedback pattern on the player's controller
@param       ForceFeedbackEffect             The force feedback pattern to play
@param       bLooping                                Whether the pattern should be played repeatedly or be a single one shot
@param       bIgnoreTimeDilation             Whether the pattern should ignore time dilation
@param       bPlayWhilePaused                Whether the pattern should continue to play while the game is paused
@param       Tag                                             A tag that allows stopping of an effect.  If another effect with this Tag is playing, it will be stopped and replaced
- `OnServerStartedVisualLogger(bool bIsLogging)`  
  Notify from server that Visual Logger is recording, to show that information on client about possible performance issues
- `PlayDynamicForceFeedback(float32 Intensity, float32 Duration, bool bAffectsLeftLarge, bool bAffectsLeftSmall, bool bAffectsRightLarge, bool bAffectsRightSmall, EDynamicForceFeedbackAction Action, FLatentActionInfo LatentInfo)`  
  Latent action that controls the playing of force feedback
Begins playing when Start is called.  Calling Update or Stop if the feedback is not active will have no effect.
Completed will execute when Stop is called or the duration ends.
When Update is called the Intensity, Duration, and affect values will be updated with the current inputs
@param       Intensity                               How strong the feedback should be.  Valid values are between 0.0 and 1.0
@param       Duration                                How long the feedback should play for.  If the value is negative it will play until stopped
@param   bAffectsLeftLarge           Whether the intensity should be applied to the large left servo
@param   bAffectsLeftSmall           Whether the intensity should be applied to the small left servo
@param   bAffectsRightLarge          Whether the intensity should be applied to the large right servo
@param   bAffectsRightSmall          Whether the intensity should be applied to the small right servo
- `PlayHapticEffect(UHapticFeedbackEffect_Base HapticEffect, EControllerHand Hand, float32 Scale = 1.000000, bool bLoop = false)`  
  Play a haptic feedback curve on the player's controller
@param       HapticEffect                    The haptic effect to play
@param       Hand                                    Which hand to play the effect on
@param       Scale                                   Scale between 0.0 and 1.0 on the intensity of playback
- `bool ProjectWorldLocationToScreen(FVector WorldLocation, FVector2D& ScreenLocation, bool bPlayerViewportRelative = false) const`  
  Convert a World Space 3D position into a 2D Screen Space position.
@return true if the world coordinate was successfully projected to the screen.
- `ResetControllerDeadZones()`  
  Resets the player's controller deadzones to default
- `ResetControllerLightColor()`  
  Resets the light color of the player's controller to default
- `ResetControllerTriggerReleaseThresholds()`  
  Resets the player's controller trigger release thresholds to default
- `ServerAcknowledgePossession(APawn P)`  
  acknowledge possession of pawn
- `ServerBlockPlayer(FUniqueNetIdRepl PlayerId)`  
  Tell the client to block a player for this controller
@param PlayerId player id to block
- `ServerCamera(FName NewMode)`  
  change mode of camera
- `ServerChangeName(FString S)`  
  Change name of server
- `ServerCheckClientPossession()`  
  Tells the server to make sure the possessed pawn is in sync with the client.
- `ServerCheckClientPossessionReliable()`  
  Reliable version of ServerCheckClientPossession to be used when there is no likely danger of spamming the network.
- `ServerExecRPC(FString Msg)`  
  RPC used by ServerExec. Not intended to be called directly
- `ServerMutePlayer(FUniqueNetIdRepl PlayerId)`  
  Tell the server to mute a player for this controller
@param PlayerId player id to mute
- `ServerNotifyLoadedWorld(FName WorldPackageName)`  
  Called to notify the server when the client has loaded a new world via seamless traveling
@param WorldPackageName the name of the world package that was loaded
- `ServerPause()`  
  Replicate pause request to the server
- `ServerRestartPlayer()`  
  Attempts to restart this player, generally called from the client upon respawn request.
- `ServerSetSpectatorLocation(FVector NewLoc, FRotator NewRot)`  
  When spectating, updates spectator location/rotation and pings the server to make sure spectating should continue.
- `ServerSetSpectatorWaiting(bool bWaiting)`  
  Indicate that the Spectator is waiting to join/respawn.
- `ServerShortTimeout()`  
  Notifies the server that the client has ticked gameplay code, and should no longer get the extended "still loading" timeout grace period
- `ServerToggleAILogging()`  
  Used by UGameplayDebuggingControllerComponent to replicate messages for AI debugging in network games.
- `ServerUnblockPlayer(FUniqueNetIdRepl PlayerId)`  
  Tell the client to unblock a player for this controller
@param PlayerId player id to unblock
- `ServerUnmutePlayer(FUniqueNetIdRepl PlayerId)`  
  Tell the server to unmute a player for this controller
@param PlayerId player id to unmute
- `ServerUpdateCamera(FVector CamLoc, int CamPitchAndYaw)`  
  If PlayerCamera.bUseClientSideCameraUpdates is set, client will replicate camera positions to the server. // @TODO - combine pitch/yaw into one int, maybe also send location compressed
- `ServerVerifyViewTarget()`  
  Used by client to request server to confirm current viewtarget (server will respond with ClientSetViewTarget() ).
- `ServerViewNextPlayer()`  
  Move camera to next player on round ended or spectating
- `ServerViewPrevPlayer()`  
  Move camera to previous player on round ended or spectating
- `ServerViewSelf(FViewTargetTransitionParams TransitionParams)`  
  Move camera to current user
- `SetAudioListenerAttenuationOverride(USceneComponent AttachToComponent, FVector AttenuationLocationOVerride)`
- `SetAudioListenerOverride(USceneComponent AttachToComponent, FVector Location, FRotator Rotation)`  
  Used to override the default positioning of the audio listener

@param AttachToComponent Optional component to attach the audio listener to
@param Location Depending on whether Component is attached this is either an offset from its location or an absolute position
@param Rotation Depending on whether Component is attached this is either an offset from its rotation or an absolute rotation
- `SetCinematicMode(bool bInCinematicMode, bool bHidePlayer, bool bAffectsHUD, bool bAffectsMovement, bool bAffectsTurning)`  
  Server/SP only function for changing whether the player is in cinematic mode.  Updates values of various state variables, then replicates the call to the client
to sync the current cinematic mode.
@param       bInCinematicMode        specify true if the player is entering cinematic mode; false if the player is leaving cinematic mode.
@param       bHidePlayer                     specify true to hide the player's pawn (only relevant if bInCinematicMode is true)
@param       bAffectsHUD                     specify true if we should show/hide the HUD to match the value of bCinematicMode
@param       bAffectsMovement        specify true to disable movement in cinematic mode, enable it when leaving
@param       bAffectsTurning         specify true to disable turning in cinematic mode or enable it when leaving
- `SetControllerDeadZones(float32 LeftDeadZone, float32 RightDeadZone)`  
  Sets the deadzones of the player's controller
@param       LeftDeadZone    Inner DeadZone for the left analog stick
@param       RightDeadZone   Inner DeadZone for the right analog stick
- `SetControllerGyroAutoCalibration(bool bEnabled)`  
  Sets whether the player's controller's gyro auto calibration is enabled
@param       bEnabled                Whether gyro auto calibration should be enabled
- `SetControllerLightColor(FColor Color)`  
  Sets the light color of the player's controller
@param       Color                                   The color for the light to be
- `SetControllerTriggerReleaseThresholds(float32 LeftThreshold, float32 RightThreshold)`  
  Sets the trigger release thresholds of the player's controller
@param       LeftThreshold   Release Threshold for the left trigger
@param       RightThreshold  Release Threshold for the right trigger
- `SetDeprecatedInputPitchScale(float32 NewValue)`
- `SetDeprecatedInputRollScale(float32 NewValue)`
- `SetDeprecatedInputYawScale(float32 NewValue)`
- `SetDisableHaptics(bool bNewDisabled)`  
  Allows the player controller to disable all haptic requests from being fired, e.g. in the case of a level loading

@param       bNewDisabled    If TRUE, the haptics will stop and prevented from being enabled again until set to FALSE
- `SetHapticsByValue(float32 Frequency, float32 Amplitude, EControllerHand Hand)`  
  Sets the value of the haptics for the specified hand directly, using frequency and amplitude.  NOTE:  If a curve is already
playing for this hand, it will be cancelled in favour of the specified values.

@param       Frequency                               The normalized frequency [0.0, 1.0] to play through the haptics system
@param       Amplitude                               The normalized amplitude [0.0, 1.0] to set the haptic feedback to
@param       Hand                                    Which hand to play the effect on
- `SetMotionControlsEnabled(bool bEnabled)`
- `SetMouseCursorWidget(EMouseCursor Cursor, UUserWidget CursorWidget)`  
  Sets the Widget for the Mouse Cursor to display
@param Cursor - the cursor to set the widget for
@param CursorWidget - the widget to set the cursor to
- `SetMouseLocation(int X, int Y)`  
  Positions the mouse cursor in screen space, in pixels.
- `SetViewTargetWithBlend(AActor NewViewTarget, float32 BlendTime = 0.000000, EViewTargetBlendFunction BlendFunc = EViewTargetBlendFunction :: VTBlend_Linear, float32 BlendExp = 0.000000, bool bLockOutgoing = false)`  
  Set the view target blending with variable control
@param NewViewTarget - new actor to set as view target
@param BlendTime - time taken to blend
@param BlendFunc - Cubic, Linear etc functions for blending
@param BlendExp -  Exponent, used by certain blend functions to control the shape of the curve.
@param bLockOutgoing - If true, lock outgoing viewtarget to last frame's camera position for the remainder of the blend.
- `SetVirtualJoystickVisibility(bool bVisible)`  
  Set the virtual joystick visibility.
- `StopHapticEffect(EControllerHand Hand)`  
  Stops a playing haptic feedback curve
@param       HapticEffect                    The haptic effect to stop
@param       Hand                                    Which hand to stop the effect for
- `bool StreamingSourceShouldActivate() const`  
  Whether the PlayerController streaming source should activate cells after loading.
Default implementation returns bStreamingSourceShouldActivate but can be overriden in child classes.
@return true if it should.
- `bool StreamingSourceShouldBlockOnSlowStreaming() const`  
  Whether the PlayerController streaming source should block on slow streaming.
Default implementation returns bStreamingSourceShouldBlockOnSlowStreaming but can be overriden in child classes.
@return true if it should.
- `bool WasInputKeyJustPressed(FKey Key) const`  
  Returns true if the given key/button was up last frame and down this frame.
- `bool WasInputKeyJustReleased(FKey Key) const`  
  Returns true if the given key/button was down last frame and up this frame.
- `UPlayerInput GetPlayerInput()`
- `PopInputComponent(UInputComponent Component)`  
  Remove an input component so it no longer handles input from this player controller.
- `PushInputComponent(UInputComponent Component)`  
  Push an input component to handle input from this player controller.

---

