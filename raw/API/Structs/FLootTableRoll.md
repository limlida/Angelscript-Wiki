### FLootTableRoll


Defines a roll of a loot table

**属性**:

- `float32 Chance [The chance of each roll succeeding]`
- `TArray<TObjectPtr<UItemCollection>> ItemCollectionsToGrant [Item collections to grant - these will always be granted]`
- `TArray<FItemWithQuantity> ItemsToGrant [The items to grant - these will always be granted]`
- `int NumRolls [The number of times we should roll the table]`
- `UDataTable TableToRoll [The items to grant if this row is given to the inventory]`


**方法**:

- `FLootTableRoll& opAssign(FLootTableRoll Other)`

---

