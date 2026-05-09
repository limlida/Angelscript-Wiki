### FAnimNotifyEventReference


**方法**:

- `float32 GetCurrentAnimationNotifyStateTime() const`  
  Gets the current time in seconds relative to the start of the notify state, clamped to the range of the notify
state

@param EventReference                The event to inspect
@return  the current time in seconds relative to the start of the notify state, clamped to the range of the
                     notify state
- `float32 GetCurrentAnimationNotifyStateTimeRatio() const`  
  Gets the current time as a ratio (0 -> 1) relative to the start of the notify state

@param EventReference                The event to inspect
@return  the current time as a ratio (0 -> 1) relative to the start of the notify state
- `float32 GetCurrentAnimationTime() const`  
  Get the current anim notify time in seconds for when this notify was fired

@param EventReference                The event to inspect
@return the time in seconds through the current animation for when this notify was fired
- `float32 GetCurrentAnimationTimeRatio() const`  
  Get the current anim notify time as a ratio (0 -> 1) through the animation for when this notify was fired

@param EventReference                The event to inspect
@return the time as a ratio (0 -> 1) through the animation for when this notify was fired
- `bool IsBlendingOut() const`  
  Gets whether this notify comes from a source that is blending out.

@param EventReference                The event to inspect
@return  Whether this notify comes from a source that is blending out.
- `bool NotifyStateReachedEnd() const`  
  Get whether the notify state reached the end (was not cancelled)

@param EventReference         The event to inspect
- `FAnimNotifyEventReference& opAssign(FAnimNotifyEventReference Other)`

---

