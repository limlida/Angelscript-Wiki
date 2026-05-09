### UNarrativeItemUseAction


Defines a way an item can be used. An item usually has at least one way it can be used.
Called only on clients - if use needs to send logic to server use an RPC.

**方法**:

- `FText GetActionDisplayName(UNarrativeItem Item)`  
  Return an FText explaining what the use action does.
- `bool GetItemsUsableWith(UNarrativeItem Item, TArray<UNarrativeItem>& OutItems) const`  
  If MultiItemUse, eturn all items that the item can be used on
- `bool IsEnabled()`  
  Return whether the use action is active and usable right now. Returning false should hide this in the UI.
- `bool IsMultiItemUse(UNarrativeItem Item)`  
  Does this use action require another item? IE applying poison to a weapon, putting attachment on a weapon, etc.
- `bool OnUse(UNarrativeItem Item, UNarrativeItem OtherItem)`  
  Execute the item use logic.

---

