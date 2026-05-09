### UChaosDestructionListener


Object allowing for retrieving Chaos Destruction data.

**属性**:

- `FChaosBreakingEventRequestSettings BreakingEventRequestSettings [The settings to use for breaking event listening]`
- `TSet<TObjectPtr<AChaosSolverActor>> ChaosSolverActors [Which chaos solver actors we're using. If empty, this listener will fallback to the "world" solver.]`
- `FChaosCollisionEventRequestSettings CollisionEventRequestSettings [The settings to use for collision event listening]`
- `TSet<TObjectPtr<AGeometryCollectionActor>> GeometryCollectionActors [Which chaos solver actors we're using. If empty, this listener will fallback to the "world" solver.]`
- `FOnChaosBreakingEvents OnBreakingEvents [Called when new breaking events are available.]`
- `FOnChaosCollisionEvents OnCollisionEvents [Called when new collision events are available.]`
- `FOnChaosRemovalEvents OnRemovalEvents [Called when new trailing events are available.]`
- `FOnChaosTrailingEvents OnTrailingEvents [Called when new trailing events are available.]`
- `FChaosRemovalEventRequestSettings RemovalEventRequestSettings [The settings to use for removal event listening]`
- `FChaosTrailingEventRequestSettings TrailingEventRequestSettings [The settings to use for trailing event listening]`
- `bool bIsBreakingEventListeningEnabled [Whether or not collision event listening is enabled]`
- `bool bIsCollisionEventListeningEnabled [Whether or not collision event listening is enabled]`
- `bool bIsRemovalEventListeningEnabled [Whether or not removal event listening is enabled]`
- `bool bIsTrailingEventListeningEnabled [Whether or not trailing event listening is enabled]`


**方法**:

- `AddChaosSolverActor(AChaosSolverActor ChaosSolverActor)`  
  Dynamically adds a chaos solver to the listener
- `AddGeometryCollectionActor(AGeometryCollectionActor GeometryCollectionActor)`  
  Dynamically adds a chaos solver to the listener
- `bool IsEventListening() const`  
  Returns if the destruction listener is listening to any events
- `RemoveChaosSolverActor(AChaosSolverActor ChaosSolverActor)`  
  Dynamically removes a chaos solver from the listener
- `RemoveGeometryCollectionActor(AGeometryCollectionActor GeometryCollectionActor)`  
  Dynamically removes a chaos solver from the listener
- `SetBreakingEventEnabled(bool bIsEnabled)`  
  Enables or disables breaking event listening
- `SetBreakingEventRequestSettings(FChaosBreakingEventRequestSettings InSettings)`  
  Sets breaking event request settings dynamically
- `SetCollisionEventEnabled(bool bIsEnabled)`  
  Enables or disables collision event listening
- `SetCollisionEventRequestSettings(FChaosCollisionEventRequestSettings InSettings)`  
  Sets collision event request settings dynamically
- `SetRemovalEventEnabled(bool bIsEnabled)`  
  Enables or disables removal event listening
- `SetRemovalEventRequestSettings(FChaosRemovalEventRequestSettings InSettings)`  
  Sets removal event request settings dynamically
- `SetTrailingEventEnabled(bool bIsEnabled)`  
  Enables or disables trailing event listening
- `SetTrailingEventRequestSettings(FChaosTrailingEventRequestSettings InSettings)`  
  Sets trailing event request settings dynamically
- `SortBreakingEvents(TArray<FChaosBreakingEventData>& BreakingEvents, EChaosBreakingSortMethod SortMethod)`  
  Sorts breaking events according to the given sort method
- `SortCollisionEvents(TArray<FChaosCollisionEventData>& CollisionEvents, EChaosCollisionSortMethod SortMethod)`  
  Sorts collision events according to the given sort method
- `SortRemovalEvents(TArray<FChaosRemovalEventData>& RemovalEvents, EChaosRemovalSortMethod SortMethod)`  
  Sorts removal events according to the given sort method
- `SortTrailingEvents(TArray<FChaosTrailingEventData>& TrailingEvents, EChaosTrailingSortMethod SortMethod)`  
  Sorts trailing events according to the given sort method

---

