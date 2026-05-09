### FInterchangeMeshInstance


* A mesh instance is a description of a translated scene node that points to a translated mesh asset.
* A mesh instance that points to an LOD group can have many LODs and many scene mesh nodes per LOD index.
* A mesh instance that points to a mesh node will have only LOD 0 and will point to one scene mesh node.

**属性**:

- `const UInterchangeBaseNode LodGroupNode [This member is null unless the mesh instance represents a LOD group.]`
- `FString MeshInstanceUid [This ID represents either a LOD group scene node UID or a mesh scene node UID.]`
- `TArray<FString> ReferencingMeshGeometryUids [All mesh geometry referenced by this MeshInstance.]`
- `TMap<int,FInterchangeLodSceneNodeContainer> SceneNodePerLodIndex [Each scene node here represents a mesh scene node. If it represents a LOD group, there may be more then one mesh scene node for a specific LOD index.]`
- `bool bHasMorphTargets []`
- `bool bIsAnimated []`
- `bool bReferenceMorphTarget []`
- `bool bReferenceSkinnedMesh []`


**方法**:

- `FInterchangeMeshInstance& opAssign(FInterchangeMeshInstance Other)`

---

