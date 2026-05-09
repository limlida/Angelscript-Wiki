### UWidgetPreview


**属性**:

- `FVector2D OverriddenWidgetSize`
- `TMap<FName,FPreviewableWidgetVariant> SlotWidgetTypes [Widget per-slot, if WidgetType has any.]`
- `FPreviewableWidgetVariant WidgetType [Widget to preview.]`
- `bool bShouldOverrideWidgetSize [Widget Custom Size Override]`


**方法**:

- `TArray<FName> GetAvailableWidgetSlotNames()`  
  Returns slot names not already occupied in SlotWidgets.
- `TArray<FName> GetWidgetSlotNames() const`

---

