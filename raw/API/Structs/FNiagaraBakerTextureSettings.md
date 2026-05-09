### FNiagaraBakerTextureSettings


**属性**:

- `FIntPoint FrameSize [Size of each frame generated.]`
- `UTexture2D GeneratedTexture [Final texture generated, an existing entry will be updated with new capture data.]`
- `FName OutputName [Optional output name, if left empty a name will be auto generated using the index of the texture/]`
- `FNiagaraBakerTextureSource SourceBinding [Source visualization we should capture, i.e. Scene Color, World Normal, etc]`
- `FIntPoint TextureSize [Overall texture size that will be generated.]`
- `bool bUseFrameSize`


**方法**:

- `FNiagaraBakerTextureSettings& opAssign(FNiagaraBakerTextureSettings Other)`

---

