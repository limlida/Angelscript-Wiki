### FNiagaraTypeDefinition


**属性**:

- `UObject ClassStructOrEnum [Underlying type for this variable, use FUnderlyingType to determine type without casting
This can be a UClass, UStruct or UEnum.  Pointing to something like the struct for an FVector, etc.
In occasional situations this may be a UClass when we're dealing with DataInterface etc.]`
- `uint8 Flags []`
- `uint16 UnderlyingType [See enumeration FUnderlyingType for possible values]`


**方法**:

- `FNiagaraTypeDefinition& opAssign(FNiagaraTypeDefinition Other)`

---

