### UInterchangeGenericLevelPipeline


**属性**:

- `FString PipelineDisplayName [The name of the pipeline that will be display in the import dialog.]`
- `EReimportStrategyFlags ReimportPropertyStrategy [Set the reimport strategy when reimporting into the level.]`
- `EInterchangeSceneHierarchyType SceneHierarchyType [Choose how you want to import the hierarchy.]`
- `bool bDeleteMissingActors [If enabled, deletes actors that were not part of the translation when reimporting into a level.]`
- `bool bDeleteMissingAssets [If enabled, deletes assets that were not part of the translation when reimporting into a level.]`
- `bool bForceReimportDeletedActors [If enabled, respawns actors that were deleted in the editor prior to a reimport.]`
- `bool bForceReimportDeletedAssets [If enabled, recreates assets that were deleted in the editor prior to reimporting into a level.]`
- `bool bUseHierarchicalISMComponents [If enabled, HierarchicalInstancedStaticMeshComponents will be generated on import instead of InstancedStaticMeshComponents.]`
- `bool bUsePhysicalInsteadOfStandardPerspectiveCamera [Disable this option to not convert Standard(Perspective) to Physical Cameras]`

---

