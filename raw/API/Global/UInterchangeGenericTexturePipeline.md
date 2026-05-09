### UInterchangeGenericTexturePipeline


**属性**:

- `FString AssetName [If set, and there is only one asset and one source, the imported asset will be given this name.]`
- `TSet<FString> FileExtensionsToImportAsLongLatCubemap [Specify the file types that should be imported as long/lat cubemaps.]`
- `FString PipelineDisplayName [The name of the pipeline that will be display in the import dialog.]`
- `bool bAllowNonPowerOfTwo [If enabled, textures that have a non-power-of-two resolution are imported.]`
- `bool bDetectNormalMapTexture [If enabled, tests each newly imported texture to see if it is a normal map.
If it is, the SRGB, Compression Settings, and LOD Group properties of that texture will be adjusted.]`
- `bool bFlipNormalMapGreenChannel [If enabled, the texture's green channel will be inverted for normal maps. This setting is only used if the Detect Normal Map Texture setting is also enabled or if the texture has been imported as a Normal map.]`
- `bool bImportTextures [If enabled, imports all texture assets found in the source.]`
- `bool bImportUDIMs [If enabled, imports textures as UDIMs if they are named using a UDIM naming pattern.]`
- `bool bPreferCompressedSourceData [If enabled, the translator compresses the source data payload whenever possible. This generally results in smaller assets.
However, some operations like the texture build might be slower, because the source data first needs to be decompressed.
If disabled, the translator leaves the decision to the factory or the pipelines.]`

---

