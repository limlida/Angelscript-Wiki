### UDataflowSimulationSceneDescription


**属性**:

- `TSubclassOf<AActor> BlueprintClass [Caching blueprint actor class to spawn]`
- `FTransform BlueprintTransform [Blueprint actor transform]`
- `UChaosCacheCollection CacheAsset [Caching asset to be used to record the simulation]`
- `FDataflowPreviewCacheParams CacheParams [Caching params used to record the simulation]`
- `USkeletalMesh EmbeddedSkeletalMesh [Skeletal mesh interpolated from simulation. This should match the SkeletalMesh used in GenerateSurfaceBindings node]`
- `UStaticMesh EmbeddedStaticMesh [Static mesh interpolated from simulation. This should match the Static mesh used in GenerateSurfaceBindings node]`
- `UGeometryCache GeometryCacheAsset [Geometry cache asset used to extract skeletal mesh results from simulation]`
- `bool bPauseSimulationViewportWhenNotFocused []`
- `bool bPauseSimulationViewportWhenPlayingInEditor []`
- `bool bSkeletalMeshVisibility [Visibility of the skeletal mesh]`

---

