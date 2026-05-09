### FCameraLookatTrackingSettings


Settings to control the camera's lookat feature

**属性**:

- `TSoftObjectPtr<AActor> ActorToTrack [If set, camera will track this actor's location]`
- `float32 LookAtTrackingInterpSpeed [Controls degree of smoothing. 0.f for no smoothing, higher numbers for faster/tighter tracking.]`
- `FVector RelativeOffset [Offset from actor position to look at. Relative to actor if tracking an actor, relative to world otherwise.]`
- `bool bAllowRoll [True to allow user-defined roll, false otherwise.]`
- `bool bDrawDebugLookAtTrackingPosition [True to draw a debug representation of the lookat location]`
- `bool bEnableLookAtTracking [True to enable lookat tracking, false otherwise.]`


**方法**:

- `FCameraLookatTrackingSettings& opAssign(FCameraLookatTrackingSettings Other)`

---

