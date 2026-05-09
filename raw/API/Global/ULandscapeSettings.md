### ULandscapeSettings


**属性**:

- `float32 BrushSizeClampMax [Maximum size that can be set manually for the landscape sculpt/paint brushes]`
- `float32 BrushSizeUIMax [Maximum size that can be set via the slider for the landscape sculpt/paint brushes]`
- `TSoftObjectPtr<UMaterialInterface> DefaultLandscapeMaterial [Default Landscape Material will be prefilled when creating a new landscape.]`
- `TSoftObjectPtr<ULandscapeLayerInfoObject> DefaultLayerInfoObject [Default Layer Info Object]`
- `int HLODMaxTextureSize [Maximum size of the textures generated for landscape HLODs]`
- `ELandscapeDirtyingMode LandscapeDirtyingMode [Defines when the engine requires the landscape actors to be resaved]`
- `int MaxComponents [Maximum Dimension of Landscape in Components]`
- `uint MaxImageImportCacheSizeMegaBytes [Maximum Size of Import Image Cache in MB]`
- `int MaxNumberOfLayers [This option controls the maximum editing layers that can be added to a Landscape]`
- `float32 PaintStrengthGamma [Exponent for the Paint Tool Strength]`
- `float32 SplineIconScale []`
- `float32 SplineIconWorldZOffset [Offset in Z for the landscape spline icon in world-space.]`
- `ELandscapeTargetLayerBlendMethod TargetLayerDefaultBlendMethod [Target layer blend method to use for newly created Landscape Layer Info assets. Changing this setting will not affect existing Landscape Layer Info assets. This is only used when DefaultLayerInfoObject isn't set.]`
- `bool bDisablePaintingStartupSlowdown [Disable Painting Startup Slowdown]`
- `bool bDisableTemporalAntiAliasingInLandscapeMode [When true, temporal anti-aliasing will be inactive while in landscape mode. This avoids the ghosting effect on the landscape brush but can lead to aliasing or shimmering on other parts of the image.]`
- `bool bDisplayTargetLayerThumbnails [When true, each target layer will have a representative thumbnail in landscape mode. However, the thumbnail system can be slow. Plus, certain landscape materials (e.g. using RVT) are not able to properly render thumbnails. Thus, setting this to false will skip needlessly rendering landscape layer thumbnails, which can improve the editing experience]`
- `bool bShouldUpdateEditLayersDuringInteractiveChanges [For landscape layers-affecting changes, allows the landscape to be updated when performing an interactive change (e.g. when changing an edit layer's alpha). Set to false if the performance when editing gets too bad (the landscape will be properly updated when the dragging operation is done).]`
- `bool bShowDialogForAutomaticLayerCreation [When true, automatic edit layer creation pops up a dialog where the new layer can be reordered relative to other layers.]`

---

