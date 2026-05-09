### UInterchangeGenericMaterialPipeline


**属性**:

- `FString AssetName [If set, and there is only one asset and one source, the imported asset will be given this name.]`
- `EInterchangeMaterialImportOption MaterialImport [Determines what kind of material assets should be created for the imported materials.]`
- `float32 OverrideDisplacementCenter [Set the value of the displacement center. If enabled it will also override any displacement center value set by shader graph nodes]`
- `FSoftObjectPath ParentMaterial [Optional material used as the parent when importing materials as instances. If no parent material is specified, one will be automatically selected during the import process.]`
- `FString PipelineDisplayName [The name of the pipeline that will be display in the import dialog.]`
- `EInterchangeMaterialSearchLocation SearchLocation [Specify where we should search for existing materials when importing.]`
- `UInterchangeSparseVolumeTexturePipeline SparseVolumeTexturePipeline`
- `UInterchangeGenericTexturePipeline TexturePipeline`
- `bool bCreateMaterialInstanceForParent [If set, additional material instances are created for reference/parent materials.]`
- `bool bIdentifyDuplicateMaterials [If set, reference materials along with respective material instances are created.]`
- `bool bImportMaterials [If enabled, imports the material assets found in the sources.]`
- `bool bOverrideDisplacement [If enabled, it will override the displacement center set by shader graph nodes, if any]`

---

