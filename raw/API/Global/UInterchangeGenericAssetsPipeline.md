### UInterchangeGenericAssetsPipeline


This pipeline is the generic option for all types of meshes. It should be called before specialized mesh pipelines like the generic static mesh or skeletal mesh pipelines.
All import options that are shared between mesh types should be added here.

**属性**:

- `UInterchangeGenericAnimationPipeline AnimationPipeline [ANIMATIONS_CATEGORY Properties]`
- `FString AssetName [If set, and there is only one asset and one source, the imported asset is given this name.]`
- `UInterchangeGenericCommonMeshesProperties CommonMeshesProperties [COMMON_MESHES_CATEGORY Properties]`
- `UInterchangeGenericCommonSkeletalMeshesAndAnimationsProperties CommonSkeletalMeshesAndAnimationsProperties [COMMON_SKELETAL_ANIMATIONS_CATEGORY]`
- `UInterchangeGenericGroomPipeline GroomPipeline [GROOMS_CATEGORY Properties]`
- `FRotator ImportOffsetRotation [Rotation offset applied to meshes and animations.]`
- `FVector ImportOffsetTranslation [Translation offset applied to meshes and animations.]`
- `float32 ImportOffsetUniformScale [Uniform scale offset applied to meshes and animations.]`
- `UInterchangeGenericMaterialPipeline MaterialPipeline [MATERIALS_CATEGORY Properties]`
- `UInterchangeGenericMeshPipeline MeshPipeline [MESHES_CATEGORY Properties]`
- `FString PipelineDisplayName [The name of the pipeline that will be display in the import dialog.]`
- `EReimportStrategyFlags ReimportStrategy [Set the reimport strategy.]`
- `bool bAssetTypeSubFolders [Group the assets according to their type into additional Content folders created on the import directory (/Materials, /StaticMeshes, /SkeletalMeshes, etc.)]`
- `bool bSceneNameSubFolder [Create an additional Content folder inside of the chosen import directory, and name it after the imported scene]`
- `bool bUseSourceNameForAsset [If enabled, and the Asset Name setting is empty, and there is only one asset and one source, the imported asset is given the same name as the source data.]`

---

