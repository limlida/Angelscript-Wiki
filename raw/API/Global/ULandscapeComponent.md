### ULandscapeComponent


**属性**:

- `int CollisionMipLevel [Heightfield mipmap used to generate collision]`
- `int ForcedLOD [Forced LOD level to use when rendering]`
- `int LODBias [LOD level Bias to use when rendering]`
- `TArray<TObjectPtr<ULandscapeLayerInfoObject>> LayerAllowList [List of layers allowed to be painted on this component]`
- `int LightingLODBias [LOD level Bias to use when lighting building via lightmass, -1 Means automatic LOD calculation based on ForcedLOD + LODBias]`
- `float32 NegativeZBoundsExtension [Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example
Extension value in the negative Z axis, positive value increases bound size]`
- `UMaterialInterface OverrideHoleMaterial`
- `UMaterialInterface OverrideMaterial`
- `TArray<FLandscapePerLODMaterialOverride> PerLODOverrideMaterials []`
- `float32 PositiveZBoundsExtension [Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example
Extension value in the positive Z axis, positive value increases bound size]`
- `int SectionBaseX [X offset from global components grid origin (in quads)]`
- `int SectionBaseY [Y offset from global components grid origin (in quads)]`
- `int SimpleCollisionMipLevel [Heightfield mipmap used to generate simple collision]`
- `float32 StaticLightingResolution [StaticLightingResolution overriding per component, default value 0 means no overriding]`


**方法**:

- `float32 EditorGetPaintLayerWeightAtLocation(FVector InLocation, ULandscapeLayerInfoObject PaintLayer)`  
  Gets the landscape paint layer weight value at the given position using LandscapeLayerInfo . Returns 0 in case it fails.
- `float32 EditorGetPaintLayerWeightByNameAtLocation(FVector InLocation, FName InPaintLayerName)`  
  Gets the landscape paint layer weight value at the given position using layer name. Returns 0 in case it fails.
- `TArray<ULandscapeGrassType> GetGrassTypesBP() const`  
  Returns the grass types used by the landscape material on this component
- `UMaterialInstanceDynamic GetMaterialInstanceDynamic(int InIndex) const`  
  Gets the landscape material instance dynamic for this component
- `SetForcedLOD(int InForcedLOD)`
- `SetLODBias(int InLODBias)`

---

