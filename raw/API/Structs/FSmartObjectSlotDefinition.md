### FSmartObjectSlotDefinition


Persistent and sharable definition of a smart object slot.

**属性**:

- `FGameplayTagContainer ActivityTags [Tags identifying this slot's use case. Can be used while looking for slots supporting given activity.
Depending on the tag filtering policy these tags can override the parent object's tags
or be combined with them while applying filters from requests.]`
- `TArray<TObjectPtr<USmartObjectBehaviorDefinition>> BehaviorDefinitions [All available definitions associated to this slot.
This allows multiple frameworks to provide their specific behavior definition to the slot.
Note that there should be only one definition of each type since the first one will be selected.]`
- `FColor DEBUG_DrawColor []`
- `ESmartObjectSlotShape DEBUG_DrawShape []`
- `float32 DEBUG_DrawSize []`
- `TArray<FSmartObjectDefinitionDataProxy> DefinitionData [Custom definition data items (struct inheriting from SmartObjecDefinitionData) that can be added to the slot definition and accessed through a FSmartObjectSlotView]`
- `FGuid ID []`
- `FName Name []`
- `FVector3f Offset [Offset relative to the parent object where the slot is located.]`
- `FRotator3f Rotation [Rotation relative to the parent object.]`
- `FGameplayTagContainer RuntimeTags [Initial runtime tags.]`
- `FWorldConditionQueryDefinition SelectionPreconditions [Preconditions that must pass for the slot to be selected.]`
- `FGameplayTagQuery UserTagFilter [This slot is available only for users matching this query.]`
- `bool bEnabled [Whether the slot is enable initially.]`


**方法**:

- `FSmartObjectSlotDefinition& opAssign(FSmartObjectSlotDefinition Other)`

---

