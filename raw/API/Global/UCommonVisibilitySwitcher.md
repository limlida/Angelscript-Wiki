### UCommonVisibilitySwitcher


Basic switcher that toggles visibility on its children to only show one widget at a time. Activates visible widget if possible.

**属性**:

- `int ActiveWidgetIndex []`
- `ESlateVisibility ShownVisibility []`
- `bool bActivateFirstSlotOnAdding [Whether or not to activate the first slot if one is added dynamically]`
- `bool bAutoActivateSlot [Whether or not to automatically activate a slot when it becomes visible]`


**方法**:

- `ActivateVisibleSlot()`
- `DeactivateVisibleSlot()`
- `DecrementActiveWidgetIndex(bool bAllowWrapping = true)`
- `UWidget GetActiveWidget() const`
- `int GetActiveWidgetIndex() const`
- `IncrementActiveWidgetIndex(bool bAllowWrapping = true)`
- `bool IsCurrentlySwitching() const`
- `SetActiveWidget(const UWidget Widget)`
- `SetActiveWidgetIndex(int Index)`

---

