### FFloatRangeColumn


A column which filters rows if an input value is not within the range specified for the row.

**属性**:

- `FChooserFloatRangeRowData DefaultRowValue [DefaultRowValue will be assigned to cells when new rows are created]`
- `FInstancedStruct InputValue [The Float property this column will filter based on]`
- `float MaxValue [Maximum value (for WrapInput)]`
- `float MinValue [Minimum value (for WrapInput)]`
- `bool bDisabled []`
- `bool bWrapInput [Wrap input, and comparisons for numbers such as angles which]`


**方法**:

- `FFloatRangeColumn& opAssign(FFloatRangeColumn Other)`

---

