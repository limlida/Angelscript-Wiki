### ULandscapeSplineSegment


**属性**:

- `FBodyInstance BodyInstance [Mesh Collision Settings]`
- `FLandscapeSplineSegmentConnection Connections [Directly editable data:]`
- `int CustomDepthStencilValue [Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)]`
- `ERendererStencilMask CustomDepthStencilWriteMask [Mask used for stencil buffer writes.]`
- `float32 LDMaxDrawDistance [Max draw distance for all the mesh pieces used in this spline]`
- `FName LayerName [Name of blend layer to paint when applying spline to landscape
If "none", no layer is painted]`
- `int RandomSeed [Random seed used for choosing which order to use spline meshes. Ignored if only one mesh is set.]`
- `TArray<TObjectPtr<URuntimeVirtualTexture>> RuntimeVirtualTextures [Array of runtime virtual textures into which we draw the spline segment.
The material also needs to be set up to output to a virtual texture.]`
- `TArray<FLandscapeSplineMeshEntry> SplineMeshes [Spline meshes from this list are used in random order along the spline.]`
- `int TranslucencySortPriority [Translucent objects with a lower sort priority draw behind objects with a higher priority.
Translucent objects with the same priority are rendered from back-to-front based on their bounds origin.
This setting is also used to sort objects being drawn into a runtime virtual texture.

Ignored if the object is not translucent.  The default priority is zero.
Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly.]`
- `int VirtualTextureCullMips [Number of lower mips in the runtime virtual texture to skip for rendering this primitive.
Larger values reduce the effective draw distance in the runtime virtual texture.
This culling method doesn't take into account primitive size or virtual texture size.]`
- `int VirtualTextureLodBias [Lod bias for rendering to runtime virtual texture.]`
- `float32 VirtualTextureMainPassMaxDrawDistance [Desired cull distance in the main pass if we are rendering to both the virtual texture AND the main pass. A value of 0 has no effect.]`
- `ERuntimeVirtualTextureMainPassType VirtualTextureRenderPassType [Controls if this component draws in the main pass as well as in the virtual texture.]`
- `bool bCastShadow [Whether the Spline Meshes should cast a shadow.]`
- `bool bHiddenInGame [Whether to hide the mesh in game]`
- `bool bLowerTerrain [If the spline is below the terrain, whether to lower the terrain down to the level of the spline when applying it to the landscape.]`
- `bool bPlaceSplineMeshesInStreamingLevels [Whether spline meshes should be placed in landscape proxy streaming levels (true) or the spline's level (false)]`
- `bool bRaiseTerrain [If the spline is above the terrain, whether to raise the terrain up to the level of the spline when applying it to the landscape.]`
- `bool bRenderCustomDepth [If true, this component will be rendered in the CustomDepth pass (usually used for outlines)]`

---

