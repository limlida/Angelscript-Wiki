### UControlRigBlueprint


**属性**:

- `FString CustomThumbnail [This relates to FAssetThumbnailPool::CustomThumbnailTagName and allows
the thumbnail pool to show the thumbnail of the icon rather than the
rig itself to avoid deploying the 3D renderer.]`
- `FRigVMDrawContainer DrawContainer []`
- `URigHierarchy Hierarchy []`
- `FRigHierarchySettings HierarchySettings []`
- `FRigInfluenceMapPerEvent Influences []`
- `FModularRigModel ModularRigModel []`
- `FModularRigSettings ModularRigSettings []`
- `TSoftObjectPtr<USkeletalMesh> PreviewSkeletalMesh []`
- `FRigModuleSettings RigModuleSettings []`
- `TArray<TSoftObjectPtr<UControlRigShapeLibrary>> ShapeLibraries []`
- `TSoftObjectPtr<UObject> SourceCurveImport [The skeleton from import into a curve]`
- `TSoftObjectPtr<UObject> SourceHierarchyImport [The skeleton from import into a hierarchy]`
- `bool bAllowMultipleInstances [If set to true, multiple control rig tracks can be created for the same rig in sequencer]`


**方法**:

- `bool CanTurnIntoStandaloneRig() const`
- `TArray<URigVMNode> ConvertHierarchyElementsToSpawnerNodes(URigHierarchy InHierarchy, TArray<FRigElementKey> InKeys, bool bRemoveElements = true)`
- `UControlRig CreateControlRig()`
- `TArray<FModuleReferenceData> FindReferencesToModule() const`
- `UClass GetControlRigClass() const`
- `UControlRig GetDebuggedControlRig()`
- `URigHierarchyController GetHierarchyController()`
- `UModularRigController GetModularRigController()`
- `USkeletalMesh GetPreviewMesh() const`
- `UTexture2D GetRigModuleIcon() const`
- `bool IsControlRigModule() const`
- `RecompileModularRig()`
- `SetPreviewMesh(USkeletalMesh PreviewMesh, bool bMarkAsDirty = true)`  
  IInterface_PreviewMeshProvider interface
- `bool TurnIntoControlRigModule()`
- `bool TurnIntoStandaloneRig()`
- `UpdateExposedModuleConnectors() const`

---

