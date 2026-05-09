### FDataRegistrySource_DataTableRules


Rules struct for data table access

**属性**:

- `float32 CachedTableKeepSeconds [Time in seconds to keep cached table alive if hard reference is off. 0 will release immediately, -1 will never release]`
- `bool bPrecacheTable [True if the entire table should be loaded into memory when the source is loaded, false if the table is loaded on demand]`


**方法**:

- `FDataRegistrySource_DataTableRules& opAssign(FDataRegistrySource_DataTableRules Other)`

---

