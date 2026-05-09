### URootMotionModifier


URootMotionModifier

**属性**:

- `float32 ActualStartTime [Actual playback time when the modifier becomes active]`
- `TWeakObjectPtr<const UAnimSequenceBase> Animation [Source of the root motion we are warping]`
- `float32 CurrentPosition [Current playback time of the animation]`
- `float32 EndTime [End time of the warping window]`
- `float32 PlayRate [Current play rate of the animation]`
- `float32 PreviousPosition [Previous playback time of the animation]`
- `float32 StartTime [Start time of the warping window]`
- `FTransform StartTransform [Character owner transform at the time this modifier becomes active]`
- `FTransform TotalRootMotionWithinWindow [Total root motion within the warping window]`
- `float32 Weight [Current blend weight of the animation]`

---

