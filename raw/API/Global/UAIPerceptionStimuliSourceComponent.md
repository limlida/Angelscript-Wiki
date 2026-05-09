### UAIPerceptionStimuliSourceComponent


Gives owning actor a way to auto-register as perception system's sense stimuli source

**属性**:

- `TArray<TSubclassOf<UAISense>> RegisterAsSourceForSenses`
- `bool bAutoRegisterAsSource`


**方法**:

- `RegisterForSense(TSubclassOf<UAISense> SenseClass)`  
  Registers owning actor as source for specified sense class
- `RegisterWithPerceptionSystem()`  
  Registers owning actor as source of stimuli for senses specified in RegisterAsSourceForSenses.
    Note that you don't have to do it if bAutoRegisterAsSource == true
- `UnregisterFromPerceptionSystem()`  
  Unregister owning actor from being a source of sense stimuli
- `UnregisterFromSense(TSubclassOf<UAISense> SenseClass)`  
  Unregisters owning actor from sources list of a specified sense class

---

