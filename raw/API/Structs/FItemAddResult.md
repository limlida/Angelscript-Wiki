### FItemAddResult


Represents the result of adding an item to the inventory.

**属性**:

- `int AmountGiven [The amount of the item that was actually added in the end. Maybe we tried adding 10 items, but only 8 could be added because of capacity/weight]`
- `int AmountToGive [The amount of the item that we tried to add]`
- `FText ErrorText [If something went wrong, like we didnt have enough capacity or carrying too much weight this contains the reason why]`
- `TSubclassOf<UNarrativeItem> ItemClass [The item class we were attempting to add]`
- `TArray<UNarrativeItem> Stacks [Any new stacks that were created]`


**方法**:

- `FItemAddResult& opAssign(FItemAddResult Other)`

---

