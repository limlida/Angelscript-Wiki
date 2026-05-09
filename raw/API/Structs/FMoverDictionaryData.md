### FMoverDictionaryData


Data block containing mappings between names and commonly-used types, so that Blueprint-only devs can include custom data
in their project's sync state or input cmds without needing native code changes.
EXPERIMENTAL: this will be removed in favor of generic user-defined struct support. If this is for Blueprint usage,
consider using FMoverUserDefinedDataStruct instead. If native, consider deriving your own FMoverDataStructBase type.

**属性**:

- `TMap<FName,bool> BoolValues`
- `TMap<FName,float> FloatValues`
- `TMap<FName,int> IntValues`
- `TMap<FName,FName> NameValues`
- `TMap<FName,FRotator> RotatorValues`
- `TMap<FName,FVector> VectorValues`


**方法**:

- `FMoverDictionaryData& opAssign(FMoverDictionaryData Other)`

---

