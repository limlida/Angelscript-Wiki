### FCameraTrackingFocusSettings


Settings to control tracking-focus mode.

**属性**:

- `TSoftObjectPtr<AActor> ActorToTrack [Focus distance will be tied to this actor's location.]`
- `FVector RelativeOffset [Offset from actor position to track. Relative to actor if tracking an actor, relative to world otherwise.]`
- `bool bDrawDebugTrackingFocusPoint [True to draw a debug representation of the tracked position.]`


**方法**:

- `FCameraTrackingFocusSettings& opAssign(FCameraTrackingFocusSettings Other)`

---

