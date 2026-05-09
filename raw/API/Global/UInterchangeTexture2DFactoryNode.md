### UInterchangeTexture2DFactoryNode


ns UE::Interchange

**方法**:

- `bool GetCustomAddressX(TextureAddress& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAddressY(TextureAddress& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetSourceBlock(int BlockIndex, FString& OutSourceFile) const`  
  Get a source block from the texture.

@param BlockIndex The UDIM Index of the block.
@param OutSourceFile The source file for that block if found.
@return True if the source file for the block was found.
- `bool GetSourceBlockByCoordinates(int X, int Y, FString& OutSourceFile) const`  
  Get a source block from the texture.

@param X The X coordinate of the block.
@param Y The Y coordinate of the block.
@param OutSourceFile The source file for that block if found.
@return True if the source file for the block was found.
- `TMap<int,FString> GetSourceBlocks() const`  
  Get the source blocks for the texture.
If the map is empty, the texture is imported as a normal texture using the payload key.
- `bool SetCustomAddressX(TextureAddress AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomAddressY(TextureAddress AttributeValue, bool bAddApplyDelegate = true)`
- `SetSourceBlock(int BlockIndex, FString InSourceFile)`  
  Set a source block for the texture.

@param BlockIndex The UDIM index of the block.
@param InSourceFile The source file for that block.

The textures must be of the same format and use the same pixel format.
The first block in the map is used to determine the accepted texture format and pixel format.
- `SetSourceBlockByCoordinates(int X, int Y, FString InSourceFile)`  
  Set a source block for the texture.

@param X The X coordinate of the block.
@param Y The Y coordinate of the block.
@param InSourceFile The source file for that block.

The textures must be of the same format and use the same pixel format.
The first block in the map is used to determine the accepted texture format and pixel format.
- `SetSourceBlocks(TMap<int,FString> InSourceBlocks)`  
  Set the source blocks for the texture.
Using this suggests to the pipeline to consider this texture as a UDIM. The pipeline can choose whether to pass these blocks to the texture factory node.
@param InSourceBlocks The blocks and their source image that compose the whole texture.
The textures must be of the same format and use the same pixel format.
The first block in the map is used to determine the accepted texture format and pixel format.

---

