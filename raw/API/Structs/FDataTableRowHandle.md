### FDataTableRowHandle


Handle to a particular row in a table

**属性**:

- `const UDataTable DataTable [Pointer to table we want a row from]`
- `FName RowName [Name of row in the table that we want]`


**方法**:

- `bool IsNull() const`
- `bool opEquals(FDataTableRowHandle Other) const`
- `FString ToDebugString(bool bUseFullPath = false) const`
- `bool GetRow(? OutRow) const`
- `FDataTableRowHandle& opAssign(FDataTableRowHandle Other)`

---

