### UNiagaraBakerOutputTexture2D


**属性**:

- `FString AtlasAssetPathFormat [When enabled a texture atlas is created]`
- `FIntPoint AtlasTextureSize [Size of the atlas texture when generating an atlas.]`
- `FIntPoint FrameSize [Size of each frame we generate.]`
- `FString FramesAssetPathFormat [When enabled each frame will create an asset.]`
- `FString FramesExportPathFormat [When enabled each frame will be exported to the output path using the format extension.]`
- `FNiagaraBakerTextureSource SourceBinding [Source visualization we should capture, i.e. Scene Color, World Normal, etc]`
- `TextureAddress TextureAddressX [After baking sets the texture address mode to use on the X axis.]`
- `TextureAddress TextureAddressY [After baking sets the texture address mode to use on the Y axis.]`
- `bool bExportFrames`
- `bool bGenerateAtlas`
- `bool bGenerateFrames`
- `bool bSetTextureAddressX`
- `bool bSetTextureAddressY`

---

