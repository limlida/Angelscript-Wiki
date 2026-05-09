### FContextualAnimSet


Contains AnimTracks for each role in the interaction.
Example: An specific set for a interaction with a car would have two tracks, one with the animation for the character and another one with the animation for the car.
It is common to have variations of the same action with different animations. We could have one AnimSet with the animations for getting into the car from the driver side and another for getting into the car from the passenger side.

**属性**:

- `FName Name [Optional name to identify this set]`
- `float32 RandomWeight [Used by the selection mechanism to 'break the tie' when multiple Sets can be selected]`
- `TArray<FContextualAnimTrack> Tracks [List of tracks with animation (and relevant data specific to that animation) for each role]`
- `TMap<FName,FTransform> WarpPoints [Map of WarpTargetNames and Transforms for this set. Generated off line based on warp points defined in the asset]`


**方法**:

- `FContextualAnimSet& opAssign(FContextualAnimSet Other)`

---

