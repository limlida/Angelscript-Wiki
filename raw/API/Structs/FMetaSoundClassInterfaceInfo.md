### FMetaSoundClassInterfaceInfo


Condensed set of class data that is serialized to editor-only asset tag data,
allowing editor scripts and code to query MetaSounds without loading them
in entirety.

**属性**:

- `TArray<FMetasoundFrontendInterfaceMetadata> DefinedInterfaces [Interfaces metadata associated with interfaces defined by this class.]`
- `TArray<FMetasoundFrontendVersion> InheritedInterfaces [Interfaces metadata associated with a given class definition.]`
- `TArray<FMetaSoundClassVertexInfo> Inputs [Collection of identifiable input vertex data cached in query for fast access & serializability
(ex. in asset tags)]`
- `TArray<FMetaSoundClassVertexInfo> Outputs [Collection of identifiable output vertex data cached in query for fast access & serializability
(ex. in asset tags)]`
- `FMetaSoundClassSearchInfo SearchInfo [Editor-only search info]`


**方法**:

- `FMetaSoundClassInterfaceInfo& opAssign(FMetaSoundClassInterfaceInfo Other)`

---

