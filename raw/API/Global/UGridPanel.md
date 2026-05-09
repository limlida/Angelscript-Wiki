### UGridPanel


A table-like panel that retains the width of every column throughout the table.

**属性**:

- `TArray<float32> ColumnFill [The column fill rules]`
- `TArray<float32> RowFill [The row fill rules]`


**方法**:

- `UGridSlot AddChildToGrid(UWidget Content, int InRow = 0, int InColumn = 0)`
- `ClearFill()`
- `SetColumnFill(int ColumnIndex, float32 Coefficient)`
- `SetRowFill(int RowIndex, float32 Coefficient)`

---

