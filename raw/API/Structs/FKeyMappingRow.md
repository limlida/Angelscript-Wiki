### FKeyMappingRow


Stores all mappings bound to a single mapping name.

Since a single mapping can have multiple bindings to it and this system should be Blueprint friendly,
this needs to be a struct (blueprint don't support nested containers).

**属性**:

- `TSet<FPlayerKeyMapping> Mappings []`


**方法**:

- `FKeyMappingRow& opAssign(FKeyMappingRow Other)`

---

