### ULegacyCameraShake


Legacy camera shake which can do either oscillation or run camera anims.

**属性**:

- `float32 AnimBlendInTime [Linear blend-in time.]`
- `float32 AnimBlendOutTime [Linear blend-out time.]`
- `float32 AnimPlayRate [Scalar defining how fast to play the anim.]`
- `float32 AnimScale [Scalar defining how "intense" to play the anim.]`
- `UCameraAnimationSequence AnimSequence [Source camera animation sequence to play. Can be null.]`
- `FFOscillator FOVOscillation [FOV oscillation]`
- `FVOscillator LocOscillation [Positional oscillation]`
- `float32 OscillationBlendInTime [Duration of the blend-in, where the oscillation scales from 0 to 1.]`
- `float32 OscillationBlendOutTime [Duration of the blend-out, where the oscillation scales from 1 to 0.]`
- `float32 OscillationDuration [Duration in seconds of current screen shake. Less than 0 means indefinite, 0 means no oscillation.]`
- `float32 OscillatorTimeRemaining [Time remaining for oscillation shakes. Less than 0.f means shake infinitely.]`
- `float32 RandomAnimSegmentDuration [When bRandomAnimSegment is true, this defines how long the anim should play.]`
- `FROscillator RotOscillation [Rotational oscillation]`
- `bool bRandomAnimSegment [If true, play a random snippet of the animation of length Duration.  Implies bLoop and bRandomStartTime = true for the AnimSequence.
If false, play the full anim once, non-looped. Useful for getting variety out of a single looped AnimSequence asset.]`


**方法**:

- `BlueprintUpdateCameraShake(float DeltaTime, float Alpha, FMinimalViewInfo POV, FMinimalViewInfo& ModifiedPOV)`  
  Called every tick to let the shake modify the point of view
- `bool IsFinished() const`  
  Called to allow a shake to decide when it's finished playing.
- `PlayShake(float Scale)`  
  Called when the shake starts playing
- `StopShake(bool bImmediately)`  
  Called when the shake is explicitly stopped.
@param bImmediatly           If true, shake stops right away regardless of blend out settings. If false, shake may blend out according to its settings.

---

