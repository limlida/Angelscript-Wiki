### USmartObjectSubsystem


Subsystem that holds all registered smart object instances and offers the API for spatial queries and reservations.

[Notes regarding thread safety]
The subsystem is not thread-safe, but a first pass has been made to make it possible to perform a set
of operations from multiple threads.
To use this mode the following compiler switch is required: #define WITH_SMARTOBJECT_MT_INSTANCE_LOCK 1

Not safe:
    - runtime instance lifetime controlled from Registration/Unregistration
            (i.e., CreateSmartObject, RegisterCollection, UnregisterCollection, DestroySmartObject, etc.)
    - queries: to prevent locking for a long time it is still required to send queries from a single thread
            (e.g., async request pattern like MassSmartObject)

Safe operation on a smart object instance or slot from an object or slot handle:
    - query and set Enable state
    - query and set Transform/Location
    - query and set Tags
    - update slot state (e.g., MarkSlotAsClaimed, MarkSlotAsReleased, etc.)
    - use a slot view using ReadSlotData/MutateSlotData

**方法**:

- `AddTagToInstance(FSmartObjectHandle Handle, FGameplayTag Tag)`  
  Adds a single tag to the smart object instance represented by the provided handle.
@param Handle Handle to the smart object.
@param Tag Tag to add to the smart object instance.
- `AddTagToSlot(FSmartObjectSlotHandle SlotHandle, FGameplayTag Tag)`  
  Adds a single tag to the smart object slot represented by the provided handle.
@param SlotHandle Handle to the smart object slot.
@param Tag Tag to add to the smart object slot.
- `FSmartObjectRequestResult FindSmartObject(FSmartObjectRequest Request, const AActor UserActor = nullptr) const`  
  Spatial lookup for first slot in range respecting request criteria and selection conditions.
@param Request Parameters defining the search area and criteria
@param UserActor Actor claiming the smart object used to evaluate selection conditions
@return First valid smart object in range. Not the closest one, just the one
             that happens to be retrieved first from space partition
- `bool FindSmartObjects_BP(FSmartObjectRequest Request, TArray<FSmartObjectRequestResult>& OutResults, const AActor UserActor = nullptr) const`  
  Blueprint function for spatial lookup for slot candidates respecting request criteria and selection conditions.
@param Request Parameters defining the search area and criteria
@param OutResults List of smart object slot candidates
@param UserActor Actor claiming the smart object
@return All valid smart objects in range.
- `GetAllSlots(FSmartObjectHandle Handle, TArray<FSmartObjectSlotHandle>& OutSlots) const`  
  Return all slots of a given smart object.
@param Handle Handle to the smart object.
@param OutSlots All slots of the smart object
- `const USmartObjectBehaviorDefinition GetBehaviorDefinition(FSmartObjectClaimHandle ClaimHandle, TSubclassOf<USmartObjectBehaviorDefinition> DefinitionClass)`  
  Return the behavior definition of a given type from a claimed object.
@param ClaimHandle Handle to a claimed slot returned by any of the Claim methods.
@param DefinitionClass The type of behavior definition.
@return The base class pointer of the requested behavior definition class associated to the slotClaim handle
- `const USmartObjectBehaviorDefinition GetBehaviorDefinitionByRequestResult(FSmartObjectRequestResult RequestResult, TSubclassOf<USmartObjectBehaviorDefinition> DefinitionClass)`  
  Return the behavior definition of a given type from a request result.
@param RequestResult A request result returned by any of the Find methods.
@param DefinitionClass The type of behavior definition.
@return The base class pointer of the requested behavior definition class associated to the request result
- `FGameplayTagContainer GetInstanceTags(FSmartObjectHandle Handle) const`  
  Returns the list of tags associated to the smart object instance represented by the provided handle.
@param Handle Handle to the smart object.
@return Container of tags associated to the smart object instance.
- `bool GetSlotLocation(FSmartObjectClaimHandle ClaimHandle, FVector& OutSlotLocation) const`  
  Returns the position (in world space) of the slot associated to the given claim handle.
@param ClaimHandle Handle to a claimed slot returned by any of the Claim methods.
@param OutSlotLocation Position (in world space) of the slot associated to ClaimHandle.
@return Whether the location was found and assigned to 'OutSlotLocation'
- `ESmartObjectSlotState GetSlotState(FSmartObjectSlotHandle SlotHandle) const`  
  Returns the state of the given smart object Slot handle.
- `FGameplayTagContainer GetSlotTags(FSmartObjectSlotHandle SlotHandle) const`  
  Returns the list of tags associated to the smart object slot represented by the provided handle.
@param SlotHandle Handle to the smart object slot.
@return Container of tags associated to the smart object instance, or empty container if slot was not valid.
- `bool GetSlotTransform(FSmartObjectClaimHandle ClaimHandle, FTransform& OutSlotTransform) const`  
  Returns the transform (in world space) of the slot associated to the given claim handle.
@param ClaimHandle Handle to a claimed slot returned by any of the Claim methods.
@param OutSlotTransform Transform (in world space) of the slot associated to ClaimHandle.
@return Whether the transform was found and assigned to 'OutSlotTransform'
- `bool GetSlotTransformFromRequestResult(FSmartObjectRequestResult RequestResult, FTransform& OutSlotTransform) const`  
  Returns the transform (in world space) of the slot associated to the given RequestResult.
@param RequestResult Result returned by any of the FindSmartObject(s) methods.
@param OutSlotTransform Transform (in world space) of the slot associated to the RequestResult.
@return Whether the transform was found and assigned to 'OutSlotTransform'
- `USmartObjectComponent GetSmartObjectComponent(FSmartObjectClaimHandle ClaimHandle, ETrySpawnActorIfDehydrated TrySpawnActorIfDehydrated = ETrySpawnActorIfDehydrated :: No) const`  
  Returns the component associated to the claim handle if still
accessible. In some scenarios the component may no longer exist
but its smart object data could (e.g. streaming)
@param ClaimHandle Handle to a claimed slot returned by any of the Claim methods.
@param TrySpawnActorIfDehydrated Indicates if the subsystem should try to spawn the actor/component
       associated to the smart object if it is currently owned by an instanced actor.
@return A pointer to the USmartObjectComponent* associated to the handle.
- `USmartObjectComponent GetSmartObjectComponentByRequestResult(FSmartObjectRequestResult Result, ETrySpawnActorIfDehydrated TrySpawnActorIfDehydrated = ETrySpawnActorIfDehydrated :: No) const`  
  Returns the component associated to the  given request result
In some scenarios the component may no longer exist
but its smart object data could (e.g. streaming)
@param Result A request result returned by any of the Find methods .
@param TrySpawnActorIfDehydrated Indicates if the subsystem should try to spawn the actor/component
       associated to the smart object if it is currently owned by an instanced actor.
@return A pointer to the USmartObjectComponent* associated to the handle.
- `bool IsEnabled(FSmartObjectHandle Handle) const`  
  Returns the enabled state of the smart object represented by the provided handle regardless of the disabled reason.
@param Handle Handle to the smart object.
@return True when associated smart object is found and set to be enabled. False otherwise.
- `bool IsEnabledForReason(FSmartObjectHandle Handle, FGameplayTag ReasonTag) const`  
  Returns the enabled state of the smart object represented by the provided handle based on a specific reason.
@param Handle Handle to the smart object.
@param ReasonTag Valid Tag to test if enabled for a specific reason. Method will ensure if not valid (i.e. None).
@return True when associated smart object is found and set to be enabled. False otherwise.
- `RemoveTagFromInstance(FSmartObjectHandle Handle, FGameplayTag Tag)`  
  Removes a single tag from the smart object instance represented by the provided handle.
@param Handle Handle to the smart object.
@param Tag Tag to remove from the smart object instance.
- `bool RemoveTagFromSlot(FSmartObjectSlotHandle SlotHandle, FGameplayTag Tag)`  
  Removes a single tag from the smart object slot represented by the provided handle.
@param SlotHandle Handle to the smart object slot.
@param Tag Tag to remove from the smart object slot.
@return True if the tag was removed.
- `bool SetEnabled(FSmartObjectHandle Handle, bool bEnabled)`  
  Enables or disables the entire smart object represented by the provided handle using the default reason (i.e. Gameplay)..
Delegate 'OnEvent' is broadcasted with ESmartObjectChangeReason::OnEnabled/ESmartObjectChangeReason::OnDisabled if state changed.
@param Handle Handle to the smart object.
@param bEnabled If true enables the smart object, disables otherwise.
@return True when associated smart object is found and set (or already set) to desired state; false otherwise.
- `bool SetEnabledForReason(FSmartObjectHandle Handle, FGameplayTag ReasonTag, bool bEnabled)`  
  Enables or disables the entire smart object represented by the provided handle using the specified reason.
Delegate 'OnEvent' is broadcasted with ESmartObjectChangeReason::OnEnabled/ESmartObjectChangeReason::OnDisabled if state changed.
@param Handle Handle to the smart object.
@param ReasonTag Valid Tag to specify the reason for changing the enabled state of the object. Method will ensure if not valid (i.e. None).
@param bEnabled If true enables the smart object, disables otherwise.
@return True when associated smart object is found and set (or already set) to desired state; false otherwise.
- `bool SetSlotEnabled(FSmartObjectSlotHandle SlotHandle, bool bEnabled)`  
  Enables or disables the smart object slot represented by the provided handle.
@param SlotHandle Handle to the smart object slot.
@param bEnabled If true enables the slot, if false, disables the slot.
@return Previous enabled state.

---

