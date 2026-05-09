### UEnvQueryGenerator_Composite


Composite generator allows using multiple generators in single query option
All child generators must produce exactly the same item type!

**属性**:

- `TSubclassOf<UEnvQueryItemType> ForcedItemType []`
- `TArray<TObjectPtr<UEnvQueryGenerator>> Generators []`
- `bool bAllowDifferentItemTypes [allow generators with different item types, use at own risk!

WARNING:
generator will use ForcedItemType for raw data, you MUST ensure proper memory layout
child generators will be writing to memory block through their own item types:
- data must fit info block allocated by ForcedItemType
- tests will read item location/properties through ForcedItemType]`

---

