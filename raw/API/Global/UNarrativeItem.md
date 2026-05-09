### UNarrativeItem


Item is the base class for an item that can be added to the inventory

**属性**:

- `TArray<TSubclassOf<UNPCActivity>> ActivitiesToGrant [AI that acquire this item will have these activities added to themselves whilst they have the item.]`
- `float32 BaseScore [A value denoting how "good" the item is. Completely optional, but can be useful when AI need to select the best weapon, or an auto-eat needs to find the best food, etc.
      If left as zero, item value will be used as fallback to find the highest scored item if required.]`
- `int BaseValue [This is the value of the item, used by vendors.]`
- `FText Description [An optional description for the item]`
- `FText DisplayName [The display name for this item in the inventory]`
- `TArray<TObjectPtr<UNarrativeItemFragment>> Fragments [Though we don't use them much in the base tool, we've added support for fragments so users can use these if requiring more composition based approach.]`
- `FGameplayTagContainer ItemTags [Any gameplay tags we wish to give this item]`
- `TSubclassOf<UNarrativeInventoryItemButton> ItemWidgetOverride [The inventory item button we should spawn for this item if it requires one. If none we'll just use the default item button.]`
- `float32 LastUseTime []`
- `int MaxStackSize [The maximum size that a stack of items can be]`
- `FOnItemModified OnItemModified`
- `UNarrativeInventoryComponent OwningInventory [The inventory that owns this item]`
- `FPickupMeshData PickupMeshData [The mesh to display for this items pickup]`
- `int Quantity [The amount of the item]`
- `TArray<FNarrativeItemStat> Stats [The stats to show in the Item Preview UI - make sure to implement GetStringVariable function and return a value matching each stat you add.

       Items have 6 stats supported out of the box, Display Name, Weight, Stack Weight, Quantity, Recharge Duration, and Max Stack Size - if you want to add more simply
       override the GetStringVariable function and return a valid value for your desired variable]`
- `TSoftObjectPtr<UTexture2D> Thumbnail [The thumbnail for this item]`
- `FText UseActionText [The text for using the item. (Equip, Eat, etc)]`
- `float32 UseRechargeDuration [The amount of time you have to wait between uses of the item, 0 means no recharge delay at all]`
- `USoundBase UseSound [The use sound for the item]`
- `float32 Weight [The weight of the item]`
- `bool bActive [Return true if this item is active]`
- `bool bAddDefaultUseOption [If true, item will have a use action automatically added that calls this items Use function when selected.
       If your item needs many use options, override GetItemUseActions.]`
- `bool bCanActivate [Some items might need to be activatable. Check this box if you want the item to be able to activate.
       Activating will mean different things for different item types, and you can define this using the Activate and Deactivate() functions.

       Activated items will also show a check on the UI]`
- `bool bConsumeOnUse [If true, 1 of this item will be consumed every time the item is used.]`
- `bool bFavourite [Whether or not this item has been favourited]`
- `bool bIsBusy [Whether or not this item is busy]`
- `bool bStackable [Whether or not this item can be stacked]`
- `bool bToggleActiveOnUse [If checked, using this item will cause it to activate/deactivate]`
- `bool bUsedWithOtherItem [If true, using this item will open a prompt asking which other item you'd like to use it on. All items passing CanUseItemWith() will be shown.]`
- `bool bWantsTickByDefault [Whether the item requires TickItem() to be called.]`


**方法**:

- `Activated()`  
  If this item is activatable, this will be called when the item is activated
- `bool CanBeRemoved() const`  
  Allows you to define whether or not the item can be dropped, nice for if you want to implement special quest items that cannot be dropped for example
- `bool CanUse() const`  
  Allows you to define whether the item can be used or not.
- `bool CanUseItemWith(UNarrativeItem TestItem) const`  
  If this item has bUsedWithOther item, this function allows us to define which items we'll allow this item to be used on.
- `Deactivated()`  
  If this item is activatable, this will be called when the item is deactivated
- `UNarrativeItemFragment GetFragment(TSubclassOf<UNarrativeItemFragment> FragmentClass, bool& OutSucceeded)`  
  Grab a fragment of the given type. Return whether we found one.
- `TArray<UNarrativeItemFragment> GetFragments(TSubclassOf<UNarrativeItemFragment> FragmentClass, bool& OutSucceeded)`  
  Grab all fragments of the given class. Return whether we found one.
- `float32 GetItemScore() const`
- `TArray<UNarrativeItemUseAction> GetItemUseActions() const`  
  Grab all the ways this item can be used.
- `float32 GetLastUseTime() const`
- `int GetMaxStackSize() const`
- `AController GetOwningController() const`
- `ANarrativeCharacter GetOwningNarrativeCharacter() const`
- `APawn GetOwningPawn() const`
- `FText GetParsedDescription()`  
  Return the description, with any string variables parsed out
- `FPickupMeshData GetPickupMeshData(int QuantityToGet) const`  
  Get the mesh to display for this items pickup
- `int GetQuantity() const`
- `FText GetRawDescription()`  
  Return the description - allows BPs to override this in case you want automatically dynamically generated descriptions based on the items properties.
- `int GetStackSpace() const`  
  Return the amount of space the item stack has left
- `float32 GetStackWeight() const`
- `FString GetStringVariable(FString VariableName)`  
  Allows you to use variables in your items description, ie Hello {Item Name}.

Simply override this function, then check the value of variable name and return whatever value you like!

ie if(VariableName == "PlayerName") {return OwningPawn->GetUsername();}; - then Hello {PlayerName}! will automatically become Hello xXNoobPwner420Xx! etc
- `bool IsActive() const`
- `bool IsStackFull() const`
- `MarkDirtyForReplication()`  
  Mark the object as needing replication. We must call this internally after modifying any replicated properties
- `OnUse(UNarrativeItem OtherItem)`  
  BP handler for item being used.
- `ServerTryUse(UNarrativeItem OtherItem)`  
  Try and use the item. Called on both server and client.
- `SetActive(bool bNewActive, bool bForce = false)`
- `SetBusy(bool bNewBusy)`  
  Sets whether the item is considered "Busy". By default, this will show a loading icon and will prevent the item from being used.
       You'd generally use this when an item needs to load some assets, like a clothing mesh, weapon item, etc and you need the player to visually see that in the UI.
- `SetLastUseTime(float32 NewLastUseTime)`
- `bool ShouldShowInInventory() const`  
  Allows you to define whether the item should be shown in the inventory, you may want to hide items from time to time
- `bool ShouldUseOnAdd() const`  
  Define whether the item should automatically use itself when added to our inventory.
- `bool ShowActiveInUI() const`  
  Return whether this item should show a tick in the inventory screen, indicating is it currently active.
- `bool TryUse(UNarrativeItem OtherItem = nullptr)`  
  Try and use the item. Called on both server and client. Returns true on clients if we were able to use item, doesn't guarantee server allows use however.

---

