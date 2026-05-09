### FSmartObjectRequestFilter


Struct that can be used to filter results of a smart object request when trying to find or claim a smart object

**属性**:

- `FGameplayTagQuery ActivityRequirements [Only return slots whose activity tags are matching this query.]`
- `TArray<TSubclassOf<USmartObjectBehaviorDefinition>> BehaviorDefinitionClasses [If set, will filter out any SmartObject that uses different BehaviorDefinition classes.]`
- `ESmartObjectClaimPriority ClaimPriority [The user's claim priority. The search will contain already claimed slots at lower priority.]`
- `FGameplayTagContainer UserTags [Gameplay tags of the Actor or Entity requesting the Smart Object slot.]`
- `bool bShouldEvaluateConditions [If true, will evaluate the slot and object conditions, otherwise will skip them.]`
- `bool bShouldIncludeClaimedSlots [If true, this search will contain claimed slots.]`
- `bool bShouldIncludeDisabledSlots [If true, this search will contain disabled slots.]`


**方法**:

- `FSmartObjectRequestFilter& opAssign(FSmartObjectRequestFilter Other)`

---

