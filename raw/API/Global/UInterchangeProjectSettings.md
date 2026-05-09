### UInterchangeProjectSettings


**属性**:

- `FInterchangeContentImportSettings ContentImportSettings [Settings used when importing into the Content Browser.]`
- `FSoftObjectPath ConverterDefaultPipeline [Optional, the pipeline asset converters will duplicate to create interchange import data pipeline.
If not set, converters will duplicate a pipeline class CDO of there choice.]`
- `TSoftClassPtr<UInterchangeFilePickerBase> FilePickerClass [This tells Interchange which file picker class to construct when we need to choose a file for a source.]`
- `TSoftClassPtr<UInterchangePipelineBase> GenericPipelineClass [Specifies which pipeline class Interchange should use when editor tools import or reimport an asset with base settings.
Unreal Editor depends on this class to be set. You can only edit this property in the .ini file.]`
- `TArray<FInterchangeGroup> InterchangeGroups [Groups that define PerTransalatorPipelines that user can select to use.]`
- `FInterchangeSceneImportSettings SceneImportSettings [Settings used when importing into a level.]`
- `bool bStaticMeshUseSmoothEdgesIfSmoothingInformationIsMissing [If enabled, both Interchange translators and the legacy import process smooth the edges of static meshes that don't contain smoothing information.
If you have an older project that relies on leaving hard edges by default, you can disable this setting to preserve consistency with older assets.]`

---

