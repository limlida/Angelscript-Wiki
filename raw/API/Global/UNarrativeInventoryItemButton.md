### UNarrativeInventoryItemButton


Base class for items in the inventory. Typically we don't use C++ bases but we want to enable easily supporting multiple button types which BindWidget handles nicely.

**属性**:

- `UNarrativeItem Item [The item that this inventory button has been created for]`
- `UInventoryWidget OwnerWidget [The inventory widget that we're a child of]`
- `UNarrativeCommonTextBlock TextBlock_Quantity [Text block showing the quantity of the item]`
- `UNarrativeCommonTextBlock TextBlock_Weight [Text block showing the weight of the item]`

---

