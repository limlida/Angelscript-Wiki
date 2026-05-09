### UAIPerceptionComponent


AIPerceptionComponent is used to register as stimuli listener in AIPerceptionSystem
and gathers registered stimuli. UpdatePerception is called when component gets new stimuli (batched)

**属性**:

- `TSubclassOf<UAISense> DominantSense [Indicated sense that takes precedence over other senses when determining sensed actor's location.
    Should be set to one of the senses configured in SensesConfig, or None.]`
- `FPerceptionUpdatedDelegate OnPerceptionUpdated [Might want to move these to special "BP_AIPerceptionComponent"]`
- `FActorPerceptionForgetUpdatedDelegate OnTargetPerceptionForgotten [Notifies all bound delegates that the perception info has been forgotten for a given target.
The notification gets broadcast when all stimuli of a given target expire or the target was explicitly forgotten.
@note The target forgetting functionality must be enabled through the AIPerceptionSystem.bForgetStaleActors flag from Project Settings.

@param       SourceActor     Actor associated to the stimulus (can not be null)
@param       Stimulus        Updated stimulus
@see ForgetActor, ForgetAll]`
- `FActorPerceptionInfoUpdatedDelegate OnTargetPerceptionInfoUpdated [Notifies all bound objects that perception info has been updated for a given target.
The notification is broadcast for any received stimulus or on change of state
according to the stimulus configuration.

Note - This delegate will be called even if source actor is no longer valid
by the time a stimulus gets processed so it is better to use source id for bookkeeping.

@param       UpdateInfo      Data structure providing information related to the updated perceptual data]`
- `FActorPerceptionUpdatedDelegate OnTargetPerceptionUpdated [Notifies all bound objects that perception info has been updated for a given target.
The notification is broadcast for any received stimulus or on change of state
according to the stimulus configuration.

Note - This delegate will not be called if source actor is no longer valid
by the time a stimulus gets processed.
Use OnTargetPerceptionInfoUpdated providing a source id to handle those cases.

@param       SourceActor     Actor associated to the stimulus (can not be null)
@param       Stimulus        Updated stimulus]`
- `TArray<TObjectPtr<UAISenseConfig>> SensesConfig []`


**方法**:

- `ForgetAll()`  
  basically cleans up PerceptualData, resulting in loss of all previous perception
- `bool GetActorsPerception(AActor Actor, FActorPerceptionBlueprintInfo& Info)`  
  Retrieves whatever has been sensed about given actor
- `GetCurrentlyPerceivedActors(TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors) const`  
  If SenseToUse is none all actors currently perceived in any way will get fetched
- `GetKnownPerceivedActors(TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors) const`  
  If SenseToUse is none all actors ever perceived in any way (and not forgotten yet) will get fetched
- `GetPerceivedHostileActors(TArray<AActor>& OutActors) const`  
  blueprint interface
- `GetPerceivedHostileActorsBySense(TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors) const`
- `bool IsSenseEnabled(TSubclassOf<UAISense> SenseClass) const`  
  Returns if a sense is active. Note that this works only if given sense has been
     already configured for this component instance
- `RequestStimuliListenerUpdate()`  
  Notifies AIPerceptionSystem to update properties for this "stimuli listener"
- `SetSenseEnabled(TSubclassOf<UAISense> SenseClass, bool bEnable)`  
  Note that this works only if given sense has been already configured for
    this component instance

---

