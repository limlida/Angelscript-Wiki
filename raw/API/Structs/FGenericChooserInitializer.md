### FGenericChooserInitializer


A ChooserTable for use in Blueprint, which can return an arbitrary Asset type or Class, and can take any number of Objects or Structs as Parameters.

**属性**:

- `TArray<FInstancedStruct> ContextData [Parameter Objects or Structs from which the chooser can read or write properties]`
- `UClass OutputObjectType [The Class of Object this Chooser returns when ResultType is set to ObjectOfType, or the Parent Class of the Classes returned by this chooser when ResultType is set to ClassOfType]`
- `EObjectChooserResultType ResultType [The kind of output this chooser has (Object or Class)]`


**方法**:

- `FGenericChooserInitializer& opAssign(FGenericChooserInitializer Other)`

---

