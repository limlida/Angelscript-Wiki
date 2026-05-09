### UTexture


**属性**:

- `float32 AdjustBrightness [Static texture brightness adjustment (scales HSV value.)  (Non-destructive; Requires texture source art to be available.)]`
- `float32 AdjustBrightnessCurve [Static texture curve adjustment (raises HSV value to the specified power.)  (Non-destructive; Requires texture source art to be available.)]`
- `float32 AdjustHue [Static texture hue adjustment (0 - 360) (offsets HSV hue by value in degrees.)  (Non-destructive; Requires texture source art to be available.)]`
- `float32 AdjustMaxAlpha [Remaps the alpha to the specified min/max range, defines the new value of 1 (Non-destructive; Requires texture source art to be available.)]`
- `float32 AdjustMinAlpha [Remaps the alpha to the specified min/max range, defines the new value of 0 (Non-destructive; Requires texture source art to be available.)]`
- `float32 AdjustRGBCurve [Static texture RGB curve adjustment (raises linear-space RGB color to the specified power.)  (Non-destructive; Requires texture source art to be available.)]`
- `float32 AdjustSaturation [Static texture saturation adjustment (scales HSV saturation.)  (Non-destructive; Requires texture source art to be available.)]`
- `float32 AdjustVibrance [Static texture "vibrance" adjustment (0 - 1) (HSV saturation algorithm adjustment.)  (Non-destructive; Requires texture source art to be available.)]`
- `FVector4 AlphaCoverageThresholds [Alpha values per channel to compare to when preserving alpha coverage. 0 means disable channel.  Typical good values in 0.5 - 0.9, not 1.0]`
- `UAssetImportData AssetImportData []`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `ETextureAvailability Availability [Whether the texture will be encoded to a gpu format and uploaded to the graphics card, or kept on the CPU for access by gamecode / blueprint.
For CPU availability, the texture will still upload a tiny black texture as a placeholder. Only applies to 2d textures.]`
- `FColor ChromaKeyColor [The color that will be replaced with transparent black if chroma keying is enabled]`
- `float32 ChromaKeyThreshold [The threshold that components have to match for the texel to be considered equal to the ChromaKeyColor when chroma keying (<=, set to 0 to require a perfect exact match)]`
- `float32 CompositePower [default 1, high values result in a stronger effect e.g 1, 2, 4, 8
this is not a slider because the texture update would not be fast enough]`
- `TObjectPtr<UTexture> CompositeTexture`
- `ECompositeTextureMode CompositeTextureMode [defines how the CompositeTexture is applied, e.g. CTM_RoughnessFromNormalAlpha]`
- `bool CompressFinal [If enabled, compress with Final quality during this Editor session.]`
- `FGuid CompressionCacheId [Change this optional ID to force the texture to be recompressed by changing its cache key.]`
- `bool CompressionNoAlpha [If enabled, the texture's alpha channel will be forced to opaque for any compressed texture output format.  Does not apply if output format is uncompressed RGBA.]`
- `ETextureCompressionQuality CompressionQuality [The compression quality for generated ASTC textures (i.e. mobile platform textures).]`
- `TextureCompressionSettings CompressionSettings [Compression settings to use when building the texture.]`
- `TextureCookPlatformTilingSettings CookPlatformTilingSettings [If the platform supports it, tile the texture when cooking, or keep it linear and tile it when it's actually submitted to the GPU.]`
- `bool DeferCompression [If enabled, defer compression of the texture until save or manually compressed in the texture editor.]`
- `FPerPlatformFloat Downscale [Downscale source texture, applied only to 2d textures without mips
< 1.0 - use scale value from texture group
1.0 - do not scale texture
> 1.0 - scale texure]`
- `ETextureDownscaleOptions DownscaleOptions [Texture downscaling options]`
- `TextureFilter Filter [The texture filtering mode to use when sampling this texture.]`
- `int LODBias [A bias to the index of the top mip level to use.  That is, number of mip levels to drop when cooking.]`
- `TextureGroup LODGroup [Texture group this texture belongs to]`
- `ETextureLossyCompressionAmount LossyCompressionAmount [How aggressively should any relevant lossy compression be applied. For compressors that support EncodeSpeed (i.e. Oodle), this is only
     applied if enabled (see Project Settings -> Texture Encoding). Note that this is *in addition* to any
     unavoidable loss due to the target format - selecting "No Lossy Compression" will not result in zero distortion for BCn formats.]`
- `int MaxTextureSize [The maximum resolution for generated textures. A value of 0 means the maximum size for the format on each platform.]`
- `TextureMipGenSettings MipGenSettings [Per asset specific setting to define the mip-map generation properties like sharpening and kernel size.]`
- `ETextureMipLoadOptions MipLoadOptions [The texture mip load options.]`
- `FName OodleTextureSdkVersion [Oodle Texture SDK Version to encode with.  Enter 'latest' to update; 'None' preserves legacy encoding to avoid patches.]`
- `FColor PaddingColor [The color used to pad the texture out if it is padded due to PowerOfTwoMode]`
- `ETexturePowerOfTwoSetting PowerOfTwoMode [How to pad the texture to a power of 2 size (if necessary)]`
- `int ResizeDuringBuildX [Width of the resized texture when using "Resize To Specific Resolution" padding and resizing option. If set to zero, original width will be used.]`
- `int ResizeDuringBuildY [Width of the resized texture when using "Resize To Specific Resolution" padding and resizing option. If set to zero, original height will be used.]`
- `bool SRGB [Whether Texture and its source are in SRGB Gamma color space.  Can only be used with 8-bit and compressed formats.  This should be unchecked if using alpha channels individually as masks.]`
- `FTextureSourceColorSettings SourceColorSettings [Texture color management settings: source encoding and color space.]`
- `uint8 VirtualTexturePrefetchMips [The number of mips that a virtual texture can stream using the traditional CPU texture streaming system.
In most cases this should be 0 because the virtual texture GPU feedback is sufficient and will minimize memory usage.
But CPU prefetching can be used in some cases to avoid late appearance of mips.]`
- `bool VirtualTextureStreaming [Is this texture streamed in using VT]`
- `EVTProducerPriority VirtualTextureStreamingPriority [Priority to use when using virtual texture streaming for this texture.]`
- `bool bChromaKeyTexture [Whether to chroma key the image, replacing any pixels that match ChromaKeyColor with transparent black]`
- `bool bDoScaleMipsForAlphaCoverage [Whether mip RGBA should be scaled to preserve the number of pixels with Value >= AlphaCoverageThresholds.  AlphaCoverageThresholds are ignored if this is off.]`
- `bool bFlipGreenChannel [When true the texture's green channel will be inverted. This is useful for some normal maps.]`
- `bool bNormalizeNormals [Normalize colors in Normal Maps after mip generation for better and sharper quality; recommended on if not required to match legacy behavior.]`
- `bool bOodlePreserveExtremes [If set to true, then Oodle encoder preserves 0 and 255 (0.0 and 1.0) values exactly in alpha channel for BC3/BC7 and in all channels for BC4/BC5.]`
- `bool bPadWithBorderColor [If set to true, texture padding will be performed using colors of the border pixels. This can be used to improve quality of the generated mipmaps for padded textures.]`
- `bool bPreserveBorder [When true the texture's border will be preserved during mipmap generation.]`
- `bool bUseLegacyGamma [A flag for using the simplified legacy gamma space e.g pow(color,1/2.2) for converting from FColor to FLinearColor, if we're doing sRGB.]`
- `bool bUseNewMipFilter [Disable for legacy compatibility.  New and changed textures should set this to use modern improved image processing.]`
- `bool bUseVirtualTextureStreamingPriority [Override the virtual texture streaming priority set on this texture by the texture LOD group.]`


**方法**:

- `FVector3f Blueprint_GetBuiltTextureSize()`  
  Get the dimensions of the largest mip of the texture when built, accounting for LODBias and other constraints
      Returns the 3d size when built for the current platform.  Does not cause texture to get built.
- `int64 Blueprint_GetMemorySize() const`  
  Gets the memory size of the texture, in bytes.
This is the size in GPU memory of the built platformdata, accounting for LODBias, etc.
Returns zero for error.
- `Blueprint_GetTextureSourceDiskAndMemorySize(int64& OutDiskSize, int64& OutMemorySize) const`  
  Gets the memory size of the texture source top mip, in bytes, and the size on disk of the asset, which may be compressed.
Uses texture source, not available in runtime games.
Does not cause texture source to be loaded, queries cached values.
Returns zero for error.
- `bool Blueprint_GetTextureSourceIdString(FString& OutTextureSourceId)`  
  Return the ID for the texture source.
If the source isn't valid or editor data isn't available, returns false.
- `bool ComputeTextureSourceChannelMinMax(FLinearColor& OutColorMin, FLinearColor& OutColorMax) const`  
  Scan the texture source pixels to compute the min & max values of the RGBA channels.
Uses texture source, not available in runtime games.
Causes texture source data to be loaded, is computed by scanning pixels when called.
Will set Min=Max=zero and return false on failure
- `ETextureStreamingMethod GetTextureStreamingMethod() const`  
  Returns the type of streaming the texture is currently using on the current platform. (None/Streamed/Virtual) *
- `SetVirtualTextureStreaming(bool bVirtualTextureStreaming)`
- `ExportToDisk(FString Filename, FImageWriteOptions Options)`  
  Export the specified texture to disk

@param Texture         The texture or render target to export
@param Filename        The filename on disk to save as
@param Options         Parameters defining the various export options

---

