### USequencerAnimationOverride


**方法**:

- `bool AllowsCinematicOverride() const`  
  Whether this animation blueprint allows Sequencer to override this anim instance and replace it during Sequencer playback.
- `TArray<FName> GetSequencerAnimSlotNames() const`  
  Should return a list of valid slot names for Sequencer to output to in the case that Sequencer is not permitted to override the anim instance.
Will be chosen by the user in drop down on the skeletal animation section properties. Should be named descriptively, as in some contexts (UEFN), the user
will not be able to view the animation blueprint itself to determine the mixing behavior of the slot.

---

