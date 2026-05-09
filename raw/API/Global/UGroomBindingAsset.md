### UGroomBindingAsset


Implements an asset that can be used to store binding information between a groom and a skeletal mesh

**属性**:

- `UGroomAsset Groom`
- `EGroomBindingMeshType GroomBindingType []`
- `TArray<FGoomBindingGroupInfo> GroupInfos`
- `int MatchingSection []`
- `int NumInterpolationPoints []`
- `UGeometryCache SourceGeometryCache []`
- `int SourceMeshRequestedLOD`
- `int SourceMeshUsedLOD []`
- `USkeletalMesh SourceSkeletalMesh`
- `FName TargetBindingAttribute`
- `UGeometryCache TargetGeometryCache []`
- `int TargetMeshRequestedMinLOD`
- `int TargetMeshUsedMinLOD []`
- `USkeletalMesh TargetSkeletalMesh`
- `UThumbnailInfo ThumbnailInfo [Information for thumbnail rendering]`


**方法**:

- `Build(FOnGroomBindingAssetBuildComplete CompletionDelegate = FOnGroomBindingAssetBuildComplete ( ))`  
  Build/rebuild a binding asset.

Avoid calling Build again while a build is already in progress on this asset, as this will
cause the Game Thread to block until the earlier build is finished.

Similarly, the Game Thread will block for a short time if a Groom Component is already using
this binding asset, so if performance is critical avoid calling Build on bindings that are
in use.
- `UGroomAsset GetGroom() const`
- `EGroomBindingMeshType GetGroomBindingType() const`
- `TArray<FGoomBindingGroupInfo> GetGroupInfos() const`
- `int GetMatchingSection() const`
- `int GetNumInterpolationPoints() const`
- `UGeometryCache GetSourceGeometryCache() const`
- `int GetSourceMeshRequestedLOD() const`
- `int GetSourceMeshUsedLOD() const`
- `USkeletalMesh GetSourceSkeletalMesh() const`
- `FName GetTargetBindingAttribute() const`
- `UGeometryCache GetTargetGeometryCache() const`
- `int GetTargetMeshRequestedMinLOD() const`
- `int GetTargetMeshUsedMinLOD() const`
- `USkeletalMesh GetTargetSkeletalMesh() const`
- `SetGroom(UGroomAsset InGroom)`
- `SetGroomBindingType(EGroomBindingMeshType InGroomBindingType)`
- `SetGroupInfos(TArray<FGoomBindingGroupInfo> InGroupInfos)`
- `SetMatchingSection(int InMatchingSection)`
- `SetNumInterpolationPoints(int InNumInterpolationPoints)`
- `SetSourceGeometryCache(UGeometryCache InGeometryCache)`
- `SetSourceMeshRequestedLOD(int InSourceMeshRequestedLOD)`
- `SetSourceMeshUsedLOD(int InSourceMeshUsedLOD)`
- `SetSourceSkeletalMesh(USkeletalMesh InSkeletalMesh)`
- `SetTargetBindingAttribute(FName InAttributeName)`
- `SetTargetGeometryCache(UGeometryCache InGeometryCache)`
- `SetTargetMeshRequestedMinLOD(int InTargetMeshRequestedMinLOD)`
- `SetTargetMeshUsedMinLOD(int InTargetMeshUsedMinLOD)`
- `SetTargetSkeletalMesh(USkeletalMesh InSkeletalMesh)`

---

