### UUniformGridPanel


A panel that evenly divides up available space between all of its children.

**属性**:

- `float32 MinDesiredSlotHeight [The minimum desired height of the slots]`
- `float32 MinDesiredSlotWidth [The minimum desired width of the slots]`
- `FMargin SlotPadding [Padding given to each slot]`


**方法**:

- `UUniformGridSlot AddChildToUniformGrid(UWidget Content, int InRow = 0, int InColumn = 0)`
- `SetMinDesiredSlotHeight(float32 InMinDesiredSlotHeight)`
- `SetMinDesiredSlotWidth(float32 InMinDesiredSlotWidth)`
- `SetSlotPadding(FMargin InSlotPadding)`

---

