### USmartObjectDefinition


SmartObject definition asset. Contains sharable information that can be used by multiple SmartObject instances at runtime.

**属性**:

- `FGameplayTagContainer ActivityTags [Tags identifying this Smart Object's use case. Can be used while looking for objects supporting given activity]`
- `ESmartObjectTagMergingPolicy ActivityTagsMergingPolicy [Indicates how Tags from slots and parent object are combined to be evaluated by a TagQuery from a find request.]`
- `TArray<TObjectPtr<USmartObjectBehaviorDefinition>> DefaultBehaviorDefinitions [List of behavior definitions of different types provided to SO's user if the slot does not provide one.]`
- `TArray<FSmartObjectDefinitionDataProxy> DefinitionData [Custom definition data items (struct inheriting from SmartObjectDefinitionData) for the whole Smart Object.]`
- `FInstancedPropertyBag Parameters [Parameters for the SmartObject definition]`
- `FWorldConditionQueryDefinition Preconditions [Preconditions that must pass for the object to be found/used.]`
- `FSmartObjectDefinitionPreviewData PreviewData [Actor class used for previewing the user in the asset editor.]`
- `TArray<FSmartObjectSlotDefinition> Slots [Where SmartObject's user needs to stay to be able to activate it. These
will be used by AI to approach the object. Locations are relative to object's location.]`
- `FGameplayTagQuery UserTagFilter [This object is available if user tags match this query; always available if query is empty.]`
- `ESmartObjectTagFilteringPolicy UserTagsFilteringPolicy [Indicates how TagQueries from slots and parent object will be processed against User Tags from a find request.]`
- `TSubclassOf<USmartObjectWorldConditionSchema> WorldConditionSchemaClass []`


**方法**:

- `FGameplayTagContainer GetActivityTags() const`  
  Returns the list of tags describing the activity associated to this definition
- `FBox GetBounds() const`  
  Return bounds encapsulating all slots
- `FSmartObjectSlotDefinition& GetMutableSlot(int Index)`  
  @return mutable slot definition stored at a given index
- `GetSlotActivityTagsByIndex(int SlotIndex, FGameplayTagContainer& OutActivityTags) const`  
  Fills the provided GameplayTagContainer with the activity tags associated to the slot according to the tag merging policy.
@param SlotIndex     Index of the slot for which the tags are requested
@param OutActivityTags Tag container to fill with the activity tags associated to the slot
- `FTransform GetSlotWorldTransform(int SlotIndex, FTransform OwnerTransform) const`  
  Returns the transform (in world space) of the given slot index.
@param OwnerTransform Transform (in world space) of the slot owner.
@param SlotIndex Index within the list of slots.
@return Transform (in world space) of the slot associated to SlotIndex, or OwnerTransform if index is invalid.
@note Method will ensure on invalid slot index.
- `FGameplayTagQuery GetUserTagFilter() const`  
  Returns the tag query to run on the user tags provided by a request to accept this definition
- `ESmartObjectTagFilteringPolicy GetUserTagsFilteringPolicy() const`  
  Returns the tag filtering policy that should be applied on User tags by this definition
- `bool IsValidSlotIndex(int SlotIndex) const`  
  @return True if specified slot index is valid.
- `TArray<FSmartObjectSlotDefinition> GetSlots() const`
- `SetUserTagFilter(FGameplayTagQuery InUserTagFilter)`  
  Sets the tag query to run on the user tags provided by a request to accept this definition

---

