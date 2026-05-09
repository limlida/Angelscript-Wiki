### FDataTableCategoryHandle


Handle to a particular set of rows in a table

**属性**:

- `FName ColumnName [Name of column in the table that we want]`
- `const UDataTable DataTable [Pointer to table we want a row from]`
- `FName RowContents [Contents of rows in the table that we want]`


**方法**:

- `bool IsNull() const`
- `bool opEquals(FDataTableCategoryHandle Other) const`
- `TArray<FName> GetRowNames() const`
- `bool GetRow(FName RowName, ? OutRow) const`
- `GetRows(? OutArray) const`
- `FDataTableCategoryHandle& opAssign(FDataTableCategoryHandle Other)`

---

