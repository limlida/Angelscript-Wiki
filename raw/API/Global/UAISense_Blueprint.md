### UAISense_Blueprint


**属性**:

- `TArray<TObjectPtr<UAIPerceptionComponent>> ListenerContainer []`
- `TSubclassOf<UUserDefinedStruct> ListenerDataType`


**方法**:

- `GetAllListenerActors(TArray<AActor>& ListenerActors) const`
- `GetAllListenerComponents(TArray<UAIPerceptionComponent>& ListenerComponents) const`
- `OnNewPawn(APawn NewPawn)`  
  called when sense's instance gets notified about new pawn that has just been spawned
- `OnListenerRegistered(AActor ActorListener, UAIPerceptionComponent PerceptionComponent)`  
  @param PerceptionComponent is ActorListener's AIPerceptionComponent instance
- `OnListenerUnregistered(AActor ActorListener, UAIPerceptionComponent PerceptionComponent)`  
  called when a listener unregistered from this sense. Most often this is called due to actor's death
    @param PerceptionComponent is ActorListener's AIPerceptionComponent instance
- `OnListenerUpdated(AActor ActorListener, UAIPerceptionComponent PerceptionComponent)`  
  @param PerceptionComponent is ActorListener's AIPerceptionComponent instance
- `float32 OnUpdate(TArray<UAISenseEvent> EventsToProcess)`  
  returns requested amount of time to pass until next frame.
    Return 0 to get update every frame (WARNING: hits performance)

---

