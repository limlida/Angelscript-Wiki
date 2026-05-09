### FMetaSoundBuilderOptions


**属性**:

- `FName Name [Name of generated object. If object already exists, used as the base name to ensure new object is unique.
If left 'None', creates unique name.]`
- `bool bForceUniqueClassName [If the resulting MetaSound is building over an existing document, a unique class name will be generated,
invalidating any referencing MetaSounds and registering the MetaSound as a new entry in the Frontend. If
building a new document, option is ignored (new document always generates a unique class name).]`


**方法**:

- `FMetaSoundBuilderOptions& opAssign(FMetaSoundBuilderOptions Other)`

---

