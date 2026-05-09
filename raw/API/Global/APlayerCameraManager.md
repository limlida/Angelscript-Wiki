### APlayerCameraManager


A PlayerCameraManager is responsible for managing the camera for a particular
player. It defines the final view properties used by other systems (e.g. the renderer),
meaning you can think of it as your virtual eyeball in the world. It can compute the
final camera properties directly, or it can arbitrate/blend between other objects or
actors that influence the camera (e.g. blending from one CameraActor to another).

The PlayerCameraManagers primary external responsibility is to reliably respond to
various Get*() functions, such as GetCameraViewPoint. Most everything else is
implementation detail and overrideable by user projects.

By default, a PlayerCameraManager maintains a "view target", which is the primary actor
the camera is associated with. It can also apply various "post" effects to the final
view state, such as camera animations, shakes, post-process effects or special
effects such as dirt on the lens.

@see https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Camera/

**属性**:

- `float32 AutoPlaneShift [Manually adjusts the planes of this camera, maintaining the distance between them. Positive moves out to the farplane, negative towards the near plane]`
- `float32 DefaultAspectRatio [Default aspect ratio. Most of the time the value from a camera component will be used instead.]`
- `float32 DefaultFOV [FOV to use by default.]`
- `TArray<TSubclassOf<UCameraModifier>> DefaultModifiers [List of modifiers to create by default for this camera]`
- `float32 DefaultOrthoWidth [The default desired width (in world units) of the orthographic view (ignored in Perspective mode)]`
- `float32 FreeCamDistance [Distance to place free camera from view target (used in certain CameraStyles)]`
- `FVector FreeCamOffset [Offset to Z free camera position (used in certain CameraStyles)]`
- `FOnAudioFadeChangeSignature OnAudioFadeChangeEvent [If bound, broadcast on fade start (with fade time) instead of manually altering audio device's primary volume directly]`
- `USceneComponent TransformComponent [Dummy component we can use to attach things to the camera.]`
- `float32 ViewPitchMax [Maximum view pitch, in degrees.]`
- `float32 ViewPitchMin [Minimum view pitch, in degrees.]`
- `float32 ViewRollMax [Maximum view roll, in degrees.]`
- `float32 ViewRollMin [Minimum view roll, in degrees.]`
- `FVector ViewTargetOffset [Offset to view target (used in certain CameraStyles)]`
- `float32 ViewYawMax [Maximum view yaw, in degrees.]`
- `float32 ViewYawMin [Minimum view yaw, in degrees.]`
- `bool bAutoCalculateOrthoPlanes [True when this camera should automatically calculated the Near+Far planes]`
- `bool bClientSimulatingViewTarget [True if clients are handling setting their own viewtarget and the server should not replicate it.]`
- `bool bDefaultConstrainAspectRatio [True if black bars should be added if the destination view has a different aspect ratio (only used when a view target doesn't specify whether or not to constrain the aspect ratio; most of the time the value from a camera component is used instead)]`
- `bool bGameCameraCutThisFrame [True if we did a camera cut this frame. Automatically reset to false every frame.
This flag affects various things in the renderer (such as whether to use the occlusion queries from last frame, and motion blur).]`
- `bool bIsOrthographic [True when this camera should use an orthographic perspective instead of FOV]`
- `bool bUpdateOrthoPlanes [Adjusts the near/far planes and the view origin of the current camera automatically to avoid clipping and light artefacting]`
- `bool bUseCameraHeightAsViewTarget [If UpdateOrthoPlanes is enabled, this setting will use the cameras current height to compensate the distance to the general view (as a pseudo distance to view target when one isn't present)]`
- `bool bUseClientSideCameraUpdates [True if server will use camera positions replicated from the client instead of calculating them locally.]`


**方法**:

- `UCameraModifier AddNewCameraModifier(TSubclassOf<UCameraModifier> ModifierClass)`  
  Creates and initializes a new camera modifier of the specified class.
@param ModifierClass - The class of camera modifier to create.
@return Returns the newly created camera modifier.
- `bool BlueprintUpdateCamera(AActor CameraTarget, FVector& NewCameraLocation, FRotator& NewCameraRotation, float32& NewCameraFOV)`  
  Blueprint hook to allow blueprints to override existing camera behavior or implement custom cameras.
If this function returns true, we will use the given returned values and skip further calculations to determine
final camera POV.
- `ClearCameraLensEffects()`  
  Removes all camera lens effects.
- `UCameraModifier FindCameraModifierByClass(TSubclassOf<UCameraModifier> ModifierClass)`  
  Returns camera modifier for this camera of the given class, if it exists.
Exact class match only. If there are multiple modifiers of the same class, the first one is returned.
- `FVector GetCameraLocation() const`  
  Returns camera's current location.
- `FRotator GetCameraRotation() const`  
  Returns camera's current rotation.
- `float32 GetFOVAngle() const`  
  Returns the camera's current full FOV angle, in degrees.
- `APlayerController GetOwningPlayerController() const`  
  Returns the PlayerController that owns this camera.
- `OnPhotographyMultiPartCaptureEnd()`  
  Event triggered upon the end of a multi-part photograph capture, when manual
free-roaming photographic camera control is about to be returned to the user.
Here you may re-enable whatever was turned off within
OnPhotographyMultiPartCaptureStart.
- `OnPhotographyMultiPartCaptureStart()`  
  Event triggered upon the start of a multi-part photograph capture (i.e. a
stereoscopic or 360-degree shot).  This is an ideal time to turn off
rendering effects that tile badly (UI, subtitles, vignette, very aggressive
bloom, etc; most of these are automatically disabled when
r.Photography.AutoPostprocess is 1).
- `OnPhotographySessionEnd()`  
  Event triggered upon leaving Photography mode (after unpausing, if
r.Photography.AutoPause is 1).
- `OnPhotographySessionStart()`  
  Event triggered upon entering Photography mode (before pausing, if
r.Photography.AutoPause is 1).
- `PhotographyCameraModify(FVector NewCameraLocation, FVector PreviousCameraLocation, FVector OriginalCameraLocation, FVector& ResultCameraLocation)`  
  Implementable blueprint hook to allow a PlayerCameraManager subclass to
constrain or otherwise modify the camera during free-camera photography.
For example, a blueprint may wish to limit the distance from the camera's
original point, or forbid the camera from passing through walls.
NewCameraLocation contains the proposed new camera location.
PreviousCameraLocation contains the camera location in the previous frame.
OriginalCameraLocation contains the camera location before the game was put
into photography mode.
Return ResultCameraLocation as modified according to your constraints.
- `bool RemoveCameraModifier(UCameraModifier ModifierToRemove)`  
  Removes the given camera modifier from this camera (if it's on the camera in the first place) and discards it.
@return True if successfully removed, false otherwise.
- `SetGameCameraCutThisFrame()`  
  Sets the bGameCameraCutThisFrame flag to true (indicating we did a camera cut this frame; useful for game code to call, e.g., when performing a teleport that should be seamless)
- `SetManualCameraFade(float32 InFadeAmount, FLinearColor Color, bool bInFadeAudio)`  
  Turns on camera fading at the given opacity. Does not auto-animate, allowing user to animate themselves.
Call StopCameraFade to turn fading back off.
- `StartCameraFade(float32 FromAlpha, float32 ToAlpha, float32 Duration, FLinearColor Color, bool bShouldFadeAudio = false, bool bHoldWhenFinished = false)`  
  Does a camera fade to/from a solid color.  Animates automatically.
@param FromAlpha - Alpha at which to begin the fade. Range [0..1], where 0 is fully transparent and 1 is fully opaque solid color.
@param ToAlpha - Alpha at which to finish the fade.
@param Duration - How long the fade should take, in seconds.
@param Color - Color to fade to/from.
@param bShouldFadeAudio - True to fade audio volume along with the alpha of the solid color.
@param bHoldWhenFinished - True for fade to hold at the ToAlpha until explicitly stopped (e.g. with StopCameraFade)
- `UCameraShakeBase StartCameraShake(TSubclassOf<UCameraShakeBase> ShakeClass, float32 Scale = 1.000000, ECameraShakePlaySpace PlaySpace = ECameraShakePlaySpace :: CameraLocal, FRotator UserPlaySpaceRot = FRotator ( ))`  
  Plays a camera shake on this camera.
@param Shake - The class of camera shake to play.
@param Scale - Scalar defining how "intense" to play the shake. 1.0 is normal (as authored).
@param PlaySpace - Which coordinate system to play the shake in (affects oscillations and camera anims)
@param UserPlaySpaceRot - Coordinate system to play shake when PlaySpace == CAPS_UserDefined.
- `UCameraShakeBase StartCameraShakeFromSource(TSubclassOf<UCameraShakeBase> ShakeClass, UCameraShakeSourceComponent SourceComponent, float32 Scale = 1.000000, ECameraShakePlaySpace PlaySpace = ECameraShakePlaySpace :: CameraLocal, FRotator UserPlaySpaceRot = FRotator ( ))`  
  Plays a camera shake on this camera.
@param Shake - The class of camera shake to play.
@param SourceComponent - The source from which the camera shake originates.
@param Scale - Applies an additional constant scale on top of the dynamic scale computed with the distance to the source
@param PlaySpace - Which coordinate system to play the shake in (affects oscillations and camera anims)
@param UserPlaySpaceRot - Coordinate system to play shake when PlaySpace == CAPS_UserDefined.
- `StopAllCameraShakes(bool bImmediately = true)`  
  Stops all active camera shakes on this camera.
- `StopAllCameraShakesFromSource(UCameraShakeSourceComponent SourceComponent, bool bImmediately = true)`  
  Stops playing all shakes originating from the given source.
- `StopAllInstancesOfCameraShake(TSubclassOf<UCameraShakeBase> Shake, bool bImmediately = true)`  
  Stops playing all shakes of the given class.
- `StopAllInstancesOfCameraShakeFromSource(TSubclassOf<UCameraShakeBase> Shake, UCameraShakeSourceComponent SourceComponent, bool bImmediately = true)`  
  Stops playing all shakes of the given class originating from the given source.
- `StopCameraFade()`  
  Stops camera fading.
- `StopCameraShake(UCameraShakeBase ShakeInstance, bool bImmediately = true)`  
  Immediately stops the given shake instance and invalidates it.

---

