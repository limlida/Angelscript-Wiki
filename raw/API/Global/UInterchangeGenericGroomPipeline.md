### UInterchangeGenericGroomPipeline


**属性**:

- `int FrameEnd`
- `int FrameStart`
- `FSoftObjectPath GroomAsset [If the groom asset is not imported, provide an existing one against which the groom cache will be validated]`
- `FHairGroupsInterpolation GroupInterpolationSettings [Settings that will be applied to all hair groups in the groom asset]`
- `EInterchangeGroomCacheImportType ImportGroomCacheType [Groom Cache types to import]`
- `FString PipelineDisplayName [The name of the pipeline that will be displayed in the import dialog.]`
- `bool bEnableGroomTypesImport [If enabled, allow the import of groom-type assets.]`
- `bool bImportGroomCaches [If enabled, import all groom caches found in the source.]`
- `bool bImportGrooms [If enabled, import all groom assets found in the source.]`
- `bool bOverrideTimeRange`

---

