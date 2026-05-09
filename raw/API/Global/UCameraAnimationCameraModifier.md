### UCameraAnimationCameraModifier


A camera modifier that plays camera animation sequences.

**方法**:

- `bool IsCameraAnimationActive(FCameraAnimationHandle Handle) const`  
  Returns whether the given camera animation is playing.
@param Handle                A handle to a previously started camera animation.
@return                              Whether the corresponding camera animation is playing or not.
- `FCameraAnimationHandle PlayCameraAnimation(UCameraAnimationSequence Sequence, FCameraAnimationParams Params)`  
  Play a new camera animation sequence.
@param Sequence              The sequence to use for the new camera animation.
@param Params                The parameters for the new camera animation instance.
- `StopAllCameraAnimations(bool bImmediate = false)`  
  Stop all camera animation instances.
@param bImmediate    True to stop it right now and ignore blend out, false to let it blend out as indicated.
- `StopAllCameraAnimationsOf(UCameraAnimationSequence Sequence, bool bImmediate = false)`  
  Stop playing all instances of the given camera animation sequence.
@param Sequence              The sequence of which to stop all instances.
@param bImmediate    True to stop it right now and ignore blend out, false to let it blend out as indicated.
- `StopCameraAnimation(FCameraAnimationHandle Handle, bool bImmediate = false)`  
  Stops the given camera animation instance.
@param Hanlde                A handle to a previously started camera animation.
@param bImmediate    True to stop it right now and ignore blend out, false to let it blend out as indicated.

---

