### FOutputStructColumn


A column which writes all elements of a Struct.
 The data for each row must be set in the details panel, and the table cells will display values which differ from the struct default.

**属性**:

- `FInstancedStruct DefaultRowValue [DefaultRowValue will be assigned to cells when new rows are created]`
- `FInstancedStruct InputValue [The Struct property this column wil write to]`
- `TArray<FInstancedStruct> RowValues []`
- `bool bDisabled []`


**方法**:

- `FOutputStructColumn& opAssign(FOutputStructColumn Other)`

---

