### UGroomAsset


Implements an asset that can be used to store hair strands

**属性**:

- `UAssetImportData AssetImportData [Asset data to be used when re-importing]`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `float32 AutoLODBias [When LOD mode is set to Auto, decrease the screen size at which curves reduction will occur.]`
- `FGroomDataflowSettings DataflowSettings [Dataflow settings used for any dataflow related operations]`
- `FPerPlatformBool DisableBelowMinLodStripping []`
- `bool EnableGlobalInterpolation [Enable radial basis function interpolation to be used instead of the local skin rigid transform (WIP)]`
- `bool EnableSimulationCache [Enable guide-cache support. This allows to attach a simulation-cache dynamically at runtime]`
- `TArray<FHairGroupsCardsSourceDescription> HairGroupsCards`
- `TArray<FHairGroupInfoWithVisibility> HairGroupsInfo []`
- `TArray<FHairGroupsInterpolation> HairGroupsInterpolation`
- `TArray<FHairGroupsLOD> HairGroupsLOD`
- `TArray<FHairGroupsMaterial> HairGroupsMaterials`
- `TArray<FHairGroupsMeshesSourceDescription> HairGroupsMeshes`
- `TArray<FHairGroupsPhysics> HairGroupsPhysics`
- `TArray<FHairGroupsRendering> HairGroupsRendering`
- `EGroomInterpolationType HairInterpolationType [Type of interpolation used (WIP)]`
- `EGroomLODMode LODMode [Define how LOD adapts curves & points for strands geometry. Auto: adapts the curve count based on screen coverage. Manual: use the discrete LOD created for each groups]`
- `FPerPlatformInt MinLOD []`
- `USkeletalMesh RiggedSkeletalMesh []`
- `UThumbnailInfo ThumbnailInfo [Thumbnail Info used for Groom Assets]`


**方法**:

- `CreateGroomDataflow()`  
  Create the dataflow from the groom asset
- `TArray<int>& GetDeformedGroupSections()`
- `bool GetEnableGlobalInterpolation() const`
- `bool GetEnableSimulationCache() const`
- `TArray<FHairGroupsCardsSourceDescription>& GetHairGroupsCards()`
- `TArray<FHairGroupsInterpolation>& GetHairGroupsInterpolation()`
- `TArray<FHairGroupsLOD>& GetHairGroupsLOD()`
- `TArray<FHairGroupsMaterial>& GetHairGroupsMaterials()`
- `TArray<FHairGroupsMeshesSourceDescription>& GetHairGroupsMeshes()`
- `TArray<FHairGroupsPhysics>& GetHairGroupsPhysics()`
- `TArray<FHairGroupsRendering>& GetHairGroupsRendering()`
- `EGroomInterpolationType GetHairInterpolationType() const`
- `USkeletalMesh GetRiggedSkeletalMesh() const`
- `SetDeformedGroupSections(TArray<int> In)`
- `SetEnableGlobalInterpolation(bool In)`
- `SetEnableSimulationCache(bool In)`
- `SetHairGroupsCards(TArray<FHairGroupsCardsSourceDescription> In)`
- `SetHairGroupsInterpolation(TArray<FHairGroupsInterpolation> In)`
- `SetHairGroupsLOD(TArray<FHairGroupsLOD> In)`
- `SetHairGroupsMaterials(TArray<FHairGroupsMaterial> In)`
- `SetHairGroupsMeshes(TArray<FHairGroupsMeshesSourceDescription> In)`
- `SetHairGroupsPhysics(TArray<FHairGroupsPhysics> In)`
- `SetHairGroupsRendering(TArray<FHairGroupsRendering> In)`
- `SetHairInterpolationType(EGroomInterpolationType In)`
- `SetRiggedSkeletalMesh(USkeletalMesh In)`

---

