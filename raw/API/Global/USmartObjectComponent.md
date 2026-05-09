### USmartObjectComponent


**属性**:

- `USmartObjectDefinition CachedDefinitionAssetVariation []`
- `const USmartObjectDefinition DefinitionAsset [@return Smart Object Definition with parameters applied.]`
- `FSmartObjectDefinitionReference DefinitionRef [Reference to Smart Object Definition Asset with parameters.]`
- `FSmartObjectComponentEventSignature OnSmartObjectEvent`
- `FSmartObjectHandle RegisteredHandle [RegisteredHandle != FSmartObjectHandle::Invalid when registered into a collection by SmartObjectSubsystem]`
- `bool bCanBePartOfCollection [Controls whether a given SmartObject can be aggregated in SmartObjectPersistentCollections. SOs in collections
can be queried and reasoned about even while the actual Actor and its components are not streamed in.
By default SmartObjects are not placed in collections and are active only as long as the owner-actor remains
loaded and active (i.e. not streamed out).]`


**方法**:

- `const USmartObjectDefinition GetDefinition() const`  
  @return Smart Object Definition with parameters applied.
- `bool IsBoundToSimulation() const`  
  Returns true if the Smart Object component is registered to the Smart Object subsystem. Depending on the update order, sometimes it is possible that the subsystem gets enabled after the component.
- `bool IsSmartObjectEnabled() const`  
  Returns the enabled state of the smart object regardless of the disabled reason.
@return True when associated smart object is set to be enabled. False otherwise.
- `bool IsSmartObjectEnabledForReason(FGameplayTag ReasonTag) const`  
  Returns the enabled state of the smart object based on a specific reason.
@param ReasonTag Valid Tag to test if enabled for a specific reason. Method will ensure if not valid (i.e. None).
@return True when associated smart object is set to be enabled. False otherwise.
- `OnEvent(FSmartObjectEventData EventData, const AActor Interactor)`
- `SetDefinition(USmartObjectDefinition DefinitionAsset)`  
  Sets the Smart Object Definition.
- `bool SetSmartObjectEnabled(bool bEnable) const`  
  Enables or disables the smart object using the default reason (i.e. Gameplay).
@return false if it was not possible to change the enabled state (ie. if it's not registered or there is no smart object subsystem).
- `bool SetSmartObjectEnabledForReason(FGameplayTag ReasonTag, bool bEnabled) const`  
  Enables or disables the smart object for the specified reason.
@param ReasonTag Valid Tag to specify the reason for changing the enabled state of the object. Method will ensure if not valid (i.e. None).
@param bEnabled If true enables the smart object, disables otherwise.
@return false if it was not possible to change the enabled state (ie. if it's not registered or there is no smart object subsystem).

---

