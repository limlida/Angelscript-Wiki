### AWorldPartitionMiniMap


A mini map to preview the world in world partition window. (editor-only)

**属性**:

- `int BuilderCellSize [Size of the loading region that will be used when iterating over the whole map during the minimap build process.
A smaller size may help reduce blurriness as it will put less pressure on various graphics pools, at the expanse of an increase in processing time.]`
- `ESceneCaptureSource CaptureSource [Specifies which component of the scene rendering should be output to the minimap texture.]`
- `uint CaptureWarmupFrames [Number of frames to render before each capture in order to warmup various rendering systems (VT/Nanite/etc).]`
- `TSet<TObjectPtr<UDataLayerAsset>> ExcludedDataLayers [Datalayers excluded from MiniMap rendering]`
- `int WorldUnitsPerPixel [Target world units per pixel for the minimap texture.
May not end up being the final minimap accuracy if the resulting texture resolution is unsupported.]`

---

