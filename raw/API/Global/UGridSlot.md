### UGridSlot


A slot for UGridPanel, these slots all share the same size as the largest slot
in the grid.

**属性**:

- `int Column [The column index of the cell this slot is in]`
- `int ColumnSpan`
- `EHorizontalAlignment HorizontalAlignment [The alignment of the object horizontally.]`
- `int Layer [Positive values offset this cell to be hit-tested and drawn on top of others. Default is 0; i.e. no offset.]`
- `FVector2D Nudge [Offset this slot's content by some amount; positive values offset to lower right]`
- `FMargin Padding [The padding area between the slot and the content it contains.]`
- `int Row [The row index of the cell this slot is in]`
- `int RowSpan`
- `EVerticalAlignment VerticalAlignment [The alignment of the object vertically.]`


**方法**:

- `SetColumn(int InColumn)`  
  Sets the column index of the slot, this determines what cell the slot is in the panel
- `SetColumnSpan(int InColumnSpan)`  
  How many columns this slot spans over
- `SetHorizontalAlignment(EHorizontalAlignment InHorizontalAlignment)`
- `SetLayer(int InLayer)`  
  Sets positive values offset this cell to be hit-tested and drawn on top of others.
- `SetNudge(FVector2D InNudge)`  
  Sets the offset for this slot's content by some amount; positive values offset to lower right
- `SetPadding(FMargin InPadding)`
- `SetRow(int InRow)`  
  Sets the row index of the slot, this determines what cell the slot is in the panel
- `SetRowSpan(int InRowSpan)`  
  How many rows this this slot spans over
- `SetVerticalAlignment(EVerticalAlignment InVerticalAlignment)`

---

