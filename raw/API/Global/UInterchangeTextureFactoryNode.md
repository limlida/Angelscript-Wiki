### UInterchangeTextureFactoryNode


**方法**:

- `bool GetCustomAdjustBrightness(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAdjustBrightnessCurve(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAdjustHue(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAdjustMaxAlpha(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAdjustMinAlpha(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAdjustRGBCurve(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAdjustSaturation(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAdjustVibrance(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAllowNonPowerOfTwo(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomAlphaCoverageThresholds(FVector4& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustombChromaKeyTexture(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustombDoScaleMipsForAlphaCoverage(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustombFlipGreenChannel(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustombPreserveBorder(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustombUseLegacyGamma(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomChromaKeyColor(FColor& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomChromaKeyThreshold(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomColorSpace(ETextureColorSpace& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomCompositePower(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomCompositeTextureMode(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomCompressionNoAlpha(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomCompressionQuality(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomCompressionSettings(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomDeferCompression(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomDownscale(float32& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomDownscaleOptions(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomFilter(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomLODBias(int& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomLODGroup(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomLossyCompressionAmount(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomMaxTextureSize(int& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomMipGenSettings(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomMipLoadOptions(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomPaddingColor(FColor& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomPowerOfTwoMode(uint8& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomPreferCompressedSourceData(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomSRGB(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `bool GetCustomTranslatedTextureNodeUid(FString& AttributeValue) const`  
  Get the unique ID of the translated texture node.
- `bool GetCustomVirtualTextureStreaming(bool& AttributeValue) const`  
  Return false if the Attribute was not set previously.
- `InitializeTextureNode(FString UniqueID, FString DisplayLabel, FString InAssetName, UInterchangeBaseNodeContainer NodeContainer)`  
  Initialize node data.
@param: UniqueID - The unique ID for this node.
@param DisplayLabel - The name of the node.
@param InAssetClass - The class the texture factory will create for this node.
- `bool SetCustomAdjustBrightness(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomAdjustBrightnessCurve(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomAdjustHue(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomAdjustMaxAlpha(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomAdjustMinAlpha(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomAdjustRGBCurve(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomAdjustSaturation(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomAdjustVibrance(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomAllowNonPowerOfTwo(bool AttributeValue)`  
  * Should the factory allow the import of texture that would have a resolution that is not a power of two
* By default this is not allowed
- `bool SetCustomAlphaCoverageThresholds(FVector4 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustombChromaKeyTexture(bool AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustombDoScaleMipsForAlphaCoverage(bool AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustombFlipGreenChannel(bool AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustombPreserveBorder(bool AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustombUseLegacyGamma(bool AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomChromaKeyColor(FColor AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomChromaKeyThreshold(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomColorSpace(ETextureColorSpace AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomCompositePower(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomCompositeTextureMode(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomCompressionNoAlpha(bool AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomCompressionQuality(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomCompressionSettings(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomDeferCompression(bool AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomDownscale(float32 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomDownscaleOptions(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomFilter(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomLODBias(int AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomLODGroup(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomLossyCompressionAmount(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomMaxTextureSize(int AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomMipGenSettings(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomMipLoadOptions(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomPaddingColor(FColor AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomPowerOfTwoMode(uint8 AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomPreferCompressedSourceData(bool AttributeValue)`  
  * Determines whether the factory should tell the translator to provide a compressed source data payload when available.
* This will generally result in smaller assets. However, some operations like the texture build might be slower, because the source data first needs to be decompressed.
- `bool SetCustomSRGB(bool AttributeValue, bool bAddApplyDelegate = true)`
- `bool SetCustomTranslatedTextureNodeUid(FString AttributeValue)`  
  Set the unique ID of the translated texture node. This is a reference to the node that was created by the translator. It is needed to get the texture payload.
- `bool SetCustomVirtualTextureStreaming(bool AttributeValue, bool bAddApplyDelegate = true)`

---

