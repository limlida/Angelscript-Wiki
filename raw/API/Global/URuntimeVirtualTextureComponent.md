### URuntimeVirtualTextureComponent


Component used to place a URuntimeVirtualTexture in the world.

**属性**:

- `TSoftObjectPtr<AActor> BoundsAlignActor [Actor to align rotation to. If set this actor is always included in the bounds calculation.]`
- `FPerPlatformBool EnableInGamePerPlatform [Per platform overrides for enabling the virtual texture. Only affects In-Game and PIE.]`
- `float32 ExpandBounds [Amount to expand the Bounds during calculation.]`
- `ETextureLossyCompressionAmount LossyCompressionAmount [How aggressively should any relevant lossy compression be applied.
For compressors that support EncodeSpeed (i.e. Oodle), this is only applied if enabled (see Project Settings -> Texture Encoding).
Note that this is in addition to any unavoidable loss due to the target format. Selecting "No Lossy Compression" will not result in zero distortion for BCn formats.]`
- `ERuntimeVirtualTextureMaterialQuality MinInGameMaterialQuality [The minimum material quality for which we enable the virtual texture. Only affects In-Game and PIE.]`
- `uint ScalabilityGroup [Group index of the scalability settings to use for the virtual texture.]`
- `int StreamLowMips [Number of streaming low mips to build for the virtual texture.]`
- `FLinearColor StreamingMipsFixedColor [Fixed color to use when building the streaming low mips. This only affects BaseColor and Displacement attributes. The Red channel is used for fixed Displacement.]`
- `UVirtualTextureBuilder StreamingTexture [Texture object containing streamed low mips. This can reduce rendering update cost.]`
- `ERuntimeVirtualTextureUseStreamingMipsInEditorMode UseStreamingMipsInEditorMode [Use streaming low mips when rendering this runtime virtual texture in the editor. Allows to visualize the baked streaming low mips.
r.VT.RVT.StreamingMips.UseInEditor can also be used to allow this across all RVT components (for debugging purposes)]`
- `URuntimeVirtualTexture VirtualTexture [The virtual texture object to use.]`
- `bool bEnableForNaniteOnly [Enable the virtual texture only when Nanite is enabled. Can be used for a Displacement virtual texture with Nanite tessellation.]`
- `bool bEnableScalability [Set to true to enable scalability settings for the virtual texture.]`
- `bool bHidePrimitives [Hide primitives in the main pass. Hidden primitives will be those that draw to this virtual texture with 'Draw in Main Pass' set to 'From Virtual Texture'.]`
- `bool bSnapBoundsToLandscape [If the Bounds Align Actor is a Landscape then this will snap the bounds so that virtual texture texels align with landscape vertex positions.]`
- `bool bUseMinMaterialQuality [Use a minimum material quality to determine if we enable the virtual texture.]`
- `bool bUseStreamingMipsFixedColor [Build the streaming low mips using a fixed color.]`
- `bool bUseStreamingMipsOnly [Whenever streaming low mips are in use, only show the streaming mips and never show runtime generated pages.]`


**方法**:

- `Invalidate(FBoxSphereBounds WorldBounds, EVTInvalidatePriority InvalidatePriority = EVTInvalidatePriority :: High)`  
  This function marks an area of the runtime virtual texture as dirty.
@param WorldBounds : The world space bounds of the pages to invalidate.
@param InvalidatePriority Allows the pages affected by this area to get processed in priority.
This allows increased responsiveness when there are more pages being updated than can be handled in a given frame (throttling)
- `RequestPreload(FBoxSphereBounds WorldBounds, int Level)`  
  Request preload of an area of the runtime virtual texture at a given mip level.
@param WorldBounds : The world space bounds of the pages to preload.
@param Level : The mip map level to preload.

---

