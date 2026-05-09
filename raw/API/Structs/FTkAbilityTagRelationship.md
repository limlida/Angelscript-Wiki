### FTkAbilityTagRelationship


Struct that defines the relationship between different ability tags

**属性**:

- `FGameplayTag AbilityTag [The tag that this container relationship is about. Single tag, but abilities can have multiple of these]`
- `FGameplayTagContainer AbilityTagsToBlock [The other ability tags that will be blocked by any ability using this tag]`
- `FGameplayTagContainer AbilityTagsToCancel [The other ability tags that will be canceled by any ability using this tag]`
- `FGameplayTagContainer ActivationBlockedTags [If an ability has the tag, this is implicitly added to the activation blocked tags of the ability]`
- `FGameplayTagContainer ActivationRequiredTags [If an ability has the tag, this is implicitly added to the activation required tags of the ability]`


**方法**:

- `FTkAbilityTagRelationship& opAssign(FTkAbilityTagRelationship Other)`

---

