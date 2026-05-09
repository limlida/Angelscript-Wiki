### UPlayerInteractionComponent


Interaction component that exists on the player controller, and contains all the interaction tracing stuff NPCs dont need

**属性**:

- `float32 InteractionCheckDistance [How far we'll trace when we check if the player is looking at an interactable object]`
- `float32 InteractionCheckFrequency [How often in seconds to check for an interactable object. Set this to zero if you want to check every tick.]`
- `float32 InteractionCheckSphereRadius [If greater than zero we'll use a sphere trace over an interaction trace]`
- `TArray<TObjectPtr<UInputAction>> InteractionInputs [All of the input actions that should instigate an interaction.]`
- `FOnFoundInteractable OnFoundInteractable [[local + server] Called when we find a new interactable object]`
- `FOnInteractPressed OnInteractPressed [[local + server] Called when we start holding the interact key]`
- `FOnInteractReleased OnInteractReleased [[local + server] Called when we release the interact key]`
- `FOnLostInteractable OnLostInteractable [[local + server] Called when we've lost our interactable]`
- `float32 RemainingInteractTime [The amount of time before interaction completes on our current interactable.This is stored per interactor and not per interactable
       because in a networked game we may want to support multiple players interacting with something and each will have their own time]`
- `UNarrativeInteractableComponent ViewedInteractable [The current interactable component we're viewing, if there is one]`


**方法**:

- `BeginInteract()`
- `ClearViewedInteractable()`
- `EndInteract()`
- `ServerBeginInteract()`
- `ServerEndInteract()`
- `SetViewedInteractable(UNarrativeInteractableComponent Interactable)`

---

