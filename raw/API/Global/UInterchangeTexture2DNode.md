### UInterchangeTexture2DNode


ns UE::Interchange

**方法**:

- `bool GetCustomWrapU(EInterchangeTextureWrapMode& AttributeValue) const`
- `bool GetCustomWrapV(EInterchangeTextureWrapMode& AttributeValue) const`
- `bool GetForceLongLatCubemap(bool& AttributeValue) const`
- `TMap<int,FString> GetSourceBlocks() const`  
  Get the source blocks for the texture.
If the map is empty, the texture is imported as a normal texture using the payload key.
- `bool SetCustomWrapU(EInterchangeTextureWrapMode AttributeValue)`
- `bool SetCustomWrapV(EInterchangeTextureWrapMode AttributeValue)`
- `bool SetForceLongLatCubemap(bool AttributeValue)`

---

