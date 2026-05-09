### UNarrativeInventoryComponent


An inventory component manages a collection of Narrative Items. For players, this should be added to the player state.
For lootable items like chests, simply add the inventory component to the chest actor.

**属性**:

- `float32 BuyItemPct [The percentage of the items value we'll buy items for if we're a vendor.]`
- `int Capacity [The maximum number of items the inventory can hold. For players, backpacks and other items increase this limit]`
- `int Currency [The amount of currency our player has]`
- `TArray<FLootTableRoll> DefaultItemTables [Loot table we'll use to generate this inventories items.]`
- `TArray<FItemWithQuantity> DefaultItems [Items that should be put in our inventory on BeginPlay. We savegame this as to only add the items once.]`
- `FText InventoryFriendlyName [The name of this inventory - used by the UI that ships with Narrative Inventory.]`
- `UNarrativeInventoryComponent LootSource [The inventory we're currently looting from]`
- `FOnBeginLooting OnBeginLooting`
- `FOnCurrencyChanged OnCurrencyChanged [Notify when our currency balance changes]`
- `FOnEndLooting OnEndLooting`
- `FOnInventoryUpdated OnInventoryUpdated`
- `FOnItemAdded OnItemAdded [Delegate for an item being added. Currently only called server side.]`
- `FOnItemRemoved OnItemRemoved [Delegate for an item being removed. Called on server and client]`
- `FOnItemUsed OnItemUsed [Delegate for an item being Used. Currently only called server side.]`
- `float32 SellItemPct [The percentage of the items value we'll sell items for]`
- `float32 WeightCapacity [The maximum weight the inventory can hold. For players, backpacks and other items increase this limit]`
- `bool bGaveDefaultItems [Nice way to ensure we don't give default items multiple times.]`
- `bool bIsVendor [If true, this inventory will be treated as a vendor, meaning taking/giving items will check you/the vendor has enough currency, and will
      give you/the vendor the currency when the taking/giving occurs also.]`


**方法**:

- `AddCurrency(int Amount)`  
  Add some currency to the players inventory. Can accept negative values.
- `bool AllowLootItem(UNarrativeInventoryComponent Taker, TSubclassOf<UNarrativeItem> ItemClass, int Quantity, FText& ErrorText) const`  
  Return true if the taker can loot the item from this inventory
- `bool AllowStoreItem(UNarrativeInventoryComponent Storer, TSubclassOf<UNarrativeItem> ItemClass, int Quantity, FText& ErrorText) const`  
  Return true if the storer can store the given item in this inventory
- `ClientRefreshInventory()`
- `int ConsumeItem(UNarrativeItem Item, int Quantity = 1)`  
  Take some quantity away from the item, and remove it from the inventory when quantity reaches zero.
      Useful for things like eating food, using ammo, etc.
- `int ConsumeItemsOfClass(TSubclassOf<UNarrativeItem> ItemClass, int Quantity = 1)`  
  Take some quantity away from any stacks of this item we have, and remove if reaches zero.
- `UNarrativeItem FindItemByClassExact(TSoftClassPtr<UNarrativeItem> ItemClass, bool bCheckVisibility = false) const`  
  Return the first item with the same class as ItemClass.
- `UNarrativeItem FindItemByGUID(FGuid ItemGUID) const`  
  Look an item up via its GUID, mostly used by code that needs to save an item ref to disk and restore it on load via GUID.
- `UNarrativeItem FindItemOfClass(TSubclassOf<UNarrativeItem> ItemClass, bool bCheckVisibility = false) const`  
  Return the first item with the same class as ItemClass, including child classes.
- `TArray<UNarrativeItem> FindItemsByClass(TSoftClassPtr<UNarrativeItem> ItemClass, bool bCheckVisibility = false) const`  
  Get all inventory items that matching the item class.
- `TArray<UNarrativeItem> FindItemsOfClass(TSubclassOf<UNarrativeItem> ItemClass, bool bCheckVisibility = false) const`  
  Get all inventory items that are children of the supplied ItemClass. Requires class to be loaded.
- `int GetBuyPrice(TSubclassOf<UNarrativeItem> Item, int Quantity = 1) const`  
  Return the price we'll buy the given item for
- `int GetCapacity() const`
- `int GetCurrency() const`  
  Return the amount of currency we have
- `float32 GetCurrentWeight() const`  
  Get the current weight of the inventory. To get the amount of items in the inventory, just do GetItems().Num()
- `TArray<UNarrativeItem> GetItems() const`
- `bool GetItemsOfClass(TSubclassOf<UNarrativeItem> ItemClass, TArray<UNarrativeItem>& OutItems, bool bCheckVisibility = false) const`  
  Return the items that match the given class
- `bool GetItemsUsableWith(UNarrativeItem Item, TArray<UNarrativeItem>& OutItems, bool bCheckVisibility = false) const`  
  Return all items that the supplied item can be used on
- `APlayerController GetOwningController() const`
- `APawn GetOwningPawn() const`
- `int GetSellPrice(TSubclassOf<UNarrativeItem> Item, int Quantity = 1) const`  
  Return the price we'll sell the given item for
- `int GetSpaceForItem(TSubclassOf<UNarrativeItem> ItemClass, FText& NoSpaceReason) const`  
  Return the amount of a given item that we have space for based on its weight, max stack size, etc.
       @param NoSpaceReason If we have no space for the item, this is the reason why
- `int GetTotalQuantityOfItem(TSubclassOf<UNarrativeItem> ItemClass, bool bCheckVisibility = false) const`  
  See how much of an item we have - will iterate all stacks of the item.
- `int GetTotalQuantityOfItemExact(TSoftClassPtr<UNarrativeItem> ItemClass, bool bCheckVisibility = false) const`  
  See how much of an item we have, class must match exactly.
- `float32 GetWeightCapacity() const`
- `GiveDefaultItems()`  
  Instead of calling this automatically on beginplay we let designers call this when they like.
- `bool HasItem(TSubclassOf<UNarrativeItem> ItemClass, int Quantity = 1, bool bCheckVisibility = false) const`  
  Return true if we have a given amount of an item. bCheckVisibility will only look for items that are visible in the inventory.
       Works for child classes, for example you can pass (UWeaponItem, 10) to see if the player has 10 weapons.
- `bool HasItemExact(TSoftClassPtr<UNarrativeItem> ItemClass, int Quantity = 1, bool bCheckVisibility = false) const`  
  Version of HasItem that only checks for items matching the type of ItemClass, and won't allow child classes.
- `bool IsVendor() const`
- `bool RemoveItem(UNarrativeItem Item)`  
  Remove the item from the inventory. We do actually allow clients to call this unlike AddItem, however the server
      will still validate that the item is allowed to be removed before removing the item, so still cheat safe
- `bool RequestLootItem(UNarrativeItem ItemToLoot, FText& ErrorText, int Quantity = 1)`  
  Loot an item. Clients RPC to tell server they want to do this; server will validate to prevent cheating
              If we're client return true/false if we notified server to loot. Server returns true if loot actually happened.
- `bool RequestStoreItem(UNarrativeItem ItemToStore, FText& ErrorText, int Quantity = 1)`  
  Store an item. Clients RPC to tell server they want to do this; server will validate to prevent cheating
      If we're client return true/false if we notified server to store. Server returns true if store actually happened.
- `ServerConsumeItem(UNarrativeItem Item, int Quantity)`
- `ServerRemoveItem(UNarrativeItem Item)`
- `ServerRequestLootItem(UNarrativeItem ItemToLoot, int Quantity)`
- `ServerRequestStoreItem(UNarrativeItem ItemToLoot, int Quantity)`
- `ServerStopLooting()`
- `ServerUseItem(UNarrativeItem Item, UNarrativeItem OtherItem)`
- `SetBuyPercentage(float32 NewBuyPercentage)`
- `SetCapacity(int NewCapacity)`
- `SetCurrency(int Amount)`  
  set the amount of currency the player has .
- `SetInventoryFriendlyName(FText Name)`
- `SetIsVendor(bool bNewIsVendor)`
- `SetLootSource(UNarrativeInventoryComponent NewLootSource)`  
  Sets our loot source. Only the server can call this for obvious reasons!
- `SetSellPercentage(float32 NewSellPercentage)`
- `SetWeightCapacity(float32 NewWeightCapacity)`
- `StopLooting()`  
  Stop looting. Clients will RPC to the server to end looting.
- `TryAddFromLootTable(FLootTableRoll LootTable, TArray<FItemAddResult>& OutItemAddResults)`  
  Add an item to our inventory using a loot table instead of an item class. Current loads the granted items syncrounously and may cause hitching depending on how heavy the item is.
- `FItemAddResult TryAddItemFromClass(TSubclassOf<UNarrativeItem> ItemClass, int Quantity = 1, bool bCheckAutoUse = true)`  
  Add an item to the inventory using the item class
       @param ItemClass the item to add
       @param Quantity the amount of the item to add
       @param bCheckAutoUse if true, we'll check if the item wants to be auto-used on add. Clothing items do this for example to auto-equip.
       @return the amount of the item that was added to the inventory

---

