### FAnimNode_CopyPoseFromMesh


Simple controller to copy a bone's transform to another one.

**属性**:

- `FName RootBoneToCopy [If you want to specify copy root, use this - this will ensure copy only below of this joint (inclusively)]`
- `TWeakObjectPtr<USkeletalMeshComponent> SourceMeshComponent [This is used by default if it's valid]`
- `bool bCopyCurves [Copy curves also from SouceMeshComponent. This will copy the curves if this instance also contains curve attributes]`
- `bool bCopyCustomAttributes [Copy custom attributes (animation attributes) from SourceMeshComponent]`
- `bool bUseAttachedParent [If SourceMeshComponent is not valid, and if this is true, it will look for attahced parent as a source]`
- `bool bUseMeshPose [Use root space transform to copy to the target pose. By default, it copies their relative transform (bone space)]`


**方法**:

- `FAnimNode_CopyPoseFromMesh& opAssign(FAnimNode_CopyPoseFromMesh Other)`

---

