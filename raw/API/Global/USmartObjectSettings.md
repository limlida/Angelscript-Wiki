### USmartObjectSettings


**属性**:

- `ESmartObjectTagMergingPolicy DefaultActivityTagsMergingPolicy [Default merging policy to use for Activity Tags in newly created SmartObjectDefinitions.
Indicates how Activity Tags from slots and parent object are combined to be evaluated by an Activity TagQuery from a find request.]`
- `ESmartObjectTagFilteringPolicy DefaultUserTagsFilteringPolicy [Default filtering policy to use for TagQueries applied on User Tags in newly created SmartObjectDefinitions.
Indicates how TagQueries from slots and parent object will be processed against User Tags from a find request.]`
- `TSubclassOf<USmartObjectWorldConditionSchema> DefaultWorldConditionSchemaClass [Base world condition class for all new Smart Object definitions.]`
- `bool bShouldExcludePreConditionsOnDedicatedClient [Indicates whether or not the pre-conditions should be excluded from serializing SmartObjectDefinitions for client builds.
This can be useful for example if the preconditions are server only plugins.
This allows to access the definition data on clients, while the logic is only handled on servers.]`

---

