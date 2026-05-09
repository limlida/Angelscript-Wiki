### UFractureMaterialsSettings


Settings related to setting materials on a Geometry Collection *

**属性**:

- `FString AssignMaterial [Material to assign to selected faces]`
- `TArray<TObjectPtr<UMaterialInterface>> Materials [Materials on the selected Geometry Collection's underlying asset (the Rest Collection).]`
- `EMaterialAssignmentTargets ToFaces [Which subset of faces to update materials assignments on, for the selected geometry]`
- `bool bOnlySelectedBones [Whether to only assign materials for faces in the selected bones, or the whole geometry collection]`
- `bool bOnlySelectedComponents [Whether 'Use Asset Materials On Components' should only update the selected components, or update all components using this asset]`

---

