### FLootTableRow


Defines a row in a loot table

**属性**:

- `float32 Chance [The chance this row will actually be given if selected]`
- `TArray<TObjectPtr<UItemCollection>> ItemCollectionsToGrant [Item collections to grant]`
- `TArray<FItemWithQuantity> ItemsToGrant [The items to grant if this row is given to the inventory]`
- `TArray<FLootTableRoll> SubTablesToRoll [Subloot tables that this loot table will roll]`


**方法**:

- `FLootTableRow& opAssign(FLootTableRow Other)`

---

