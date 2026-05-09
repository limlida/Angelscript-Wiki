### FDynamicMeshChangeInfo


FDynamicMeshChangeInfo stores information about a change to a UDynamicMesh.
This struct is emitted by the UDynamicMesh OnPreMeshChanged() and OnMeshChanged() delegates.

**属性**:

- `EDynamicMeshAttributeChangeFlags Flags`
- `EDynamicMeshChangeType Type`
- `bool bIsRevertChange [for changes that are an FChange, indicates whether this is an 'Apply' or 'Revert' of the FChange]`


**方法**:

- `FDynamicMeshChangeInfo& opAssign(FDynamicMeshChangeInfo Other)`

---

