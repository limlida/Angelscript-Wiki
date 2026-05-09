### UIKRetargeter


**属性**:

- `UIKRigDefinition SourceIKRigAsset [The rig to copy animation FROM.]`
- `FVector SourceMeshOffset [The offset applied to the source mesh in the editor viewport.]`
- `FLinearColor SourceOverideColor [Override the source skeleton color in the editor viewport.]`
- `TSoftObjectPtr<USkeletalMesh> SourcePreviewMesh [Optional. Override the Skeletal Mesh to copy animation from. Uses the preview mesh from the Source IK Rig asset by default.]`
- `UIKRigDefinition TargetIKRigAsset [The rig to copy animation TO. Note that this is only the default target IK Rig and ops can be setup to use other IK Rigs as desired.]`
- `FVector TargetMeshOffset [The offset applied to the target mesh in the editor viewport.]`
- `float32 TargetMeshScale [Scale the target mesh in the viewport for easier visualization next to the source.]`
- `FLinearColor TargetOverideColor [Override the target skeleton color in the editor viewport.]`
- `TSoftObjectPtr<USkeletalMesh> TargetPreviewMesh [Optional. Override the Skeletal Mesh to preview the retarget on. Uses the preview mesh from the Target IK Rig asset by default.]`
- `bool bDebugDraw [Toggle debug drawing for retargeting in the viewport.]`
- `bool bIgnoreRootLockInPreview [When true, animation sequences with "Force Root Lock" turned On will act as though it is Off.
This affects only the preview in the retarget editor. Use ExportRootLockMode to control exported animation behavior.
This setting has no effect on runtime retargeting where root motion is copied from the source component.]`
- `bool bOverrideSourceSkeletonColor [Override the source skeleton color in the editor viewport.]`
- `bool bOverrideTargetSkeletonColor [Override the target skeleton color in the editor viewport.]`
- `bool bProfileOps [Toggle performance profiling of the op stack.]`
- `bool bShowSourceMesh [Show/hide the source skeletal mesh in the editor viewport.]`
- `bool bShowSourceSkeleton [Show/hide the source skeleton in the editor viewport. Note: the viewport must be showing bones to see the skeleton.]`
- `bool bShowTargetMesh [Show/hide the target skeletal mesh in the editor viewport.]`
- `bool bShowTargetSkeleton [Show/hide the target skeleton in the editor viewport. Note: the viewport must be showing bones to see the skeleton.]`


**方法**:

- `bool HasSourceIKRig() const`  
  Returns true if the source IK Rig has been assigned
- `bool HasTargetIKRig() const`  
  Returns true if the target IK Rig has been assigned

---

