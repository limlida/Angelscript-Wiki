### UNiagaraDataInterfaceDataTable


Data interface that allows you to read rows from data tables.
You can read data either using a list of filtered row names, directly by index.

**属性**:

- `UDataTable DataTable [Default DataTable to use can be overriden using the parameter binding.]`
- `TArray<FName> FilteredRowNames [List of Row Names to read from the DataTable.]`
- `FNiagaraUserParameterBinding ObjectParameterBinding [Parameter binding that can be used to override the default table.]`

---

