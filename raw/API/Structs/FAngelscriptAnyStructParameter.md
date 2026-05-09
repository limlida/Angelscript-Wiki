### FAngelscriptAnyStructParameter


This is a simple struct that has an implicit constructor bound that can take any struct type.

It can be used to create function binds that take an FInstancedStruct on the C++ side, but
that AS scripts can conveniently pass any struct to, without having to manually call `FInstancedStruct::Make` each time.

**属性**:

- `FInstancedStruct InstancedStruct`


**方法**:

- `FAngelscriptAnyStructParameter& opAssign(FAngelscriptAnyStructParameter Other)`

---

