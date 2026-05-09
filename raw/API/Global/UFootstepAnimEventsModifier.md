### UFootstepAnimEventsModifier


Generates animation notifies and/or sync markers for any specified bone(s)

**属性**:

- `TArray<FFootDefinition> FootDefinitions [Foot bone(s) to be processed]`
- `float32 GroundThreshold [Threshold for determining if a foot bone position can be considered to be on the ground level]`
- `int SampleRate [Rate used to sample the animation]`
- `float32 SpeedThreshold [Threshold to start finding the smallest foot bone translation speed.

Note that the foot bone translation speed is normalize therefore when a footstep occurs
the speed will be very close to zero, thus for most cases this value won't need to be changed.]`
- `bool bShouldRemovePreExistingNotifiesOrSyncMarkers [If true, applying the anim modifier becomes a destructive action, meaning that any existing matched tracks will have their data overwritten by the modifier.
Otherwise, no previous notifies or sync markers will removed when applying the anim modifier.]`

---

