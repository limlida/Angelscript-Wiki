### USequenceCameraShakePattern


A camera shake pattern that plays a sequencer animation.

**属性**:

- `float32 BlendInTime [Linear blend-in time.]`
- `float32 BlendOutTime [Linear blend-out time.]`
- `float32 PlayRate [Scalar defining how fast to play the anim.]`
- `float32 RandomSegmentDuration [When bRandomSegment is true, defines how long the sequence should play.]`
- `float32 Scale [Scalar defining how "intense" to play the anim.]`
- `UCameraAnimationSequence Sequence [Source camera animation sequence to play.]`
- `bool bRandomSegment [When true, plays a random snippet of the sequence for RandomSegmentDuration seconds.

@note The sequence we be forced to loop when bRandomSegment is enabled, in case the duration
      is longer than what's left to play from the random start time.]`

---

