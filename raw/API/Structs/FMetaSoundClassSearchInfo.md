### FMetaSoundClassSearchInfo


Condensed set of class metadata that is serialized to editor-only asset
tag data, allowing editor scripts and code to search and display MetaSounds
without loading in asset selection contexts without loading them in entirety.

**属性**:

- `FText ClassDescription []`
- `FText ClassDisplayName [Human readable DisplayName of Class (optional, overrides the
package name in the editor if specified by MetaSound Asset Author).]`
- `TArray<FText> Hierarchy []`
- `TArray<FText> Keywords []`


**方法**:

- `FMetaSoundClassSearchInfo& opAssign(FMetaSoundClassSearchInfo Other)`

---

