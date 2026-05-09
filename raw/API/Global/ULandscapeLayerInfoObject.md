### ULandscapeLayerInfoObject


**属性**:

- `FName BlendGroup [Only available for Advanced Weight Blending. Allows target layers from the same group only to have their weight adjusted against one another.]`
- `ELandscapeTargetLayerBlendMethod BlendMethod [Allows this layer's final weight to be adjusted against others.]`
- `float32 Hardness [Defines how much 'resistance' areas painted with this layer will offer to the Erosion tool. A hardness of 0 means the layer is fully affected by erosion, while 1 means fully unaffected.]`
- `FLinearColor LayerUsageDebugColor [The color to use for layer usage debug]`
- `float32 MinimumCollisionRelevanceWeight [The minimum weight that needs to be painted for that layer to be picked up as the dominant physical layer.]`
- `UPhysicalMaterial PhysMaterial [Physical material to use when this layer is the predominant one at a given location. Note: this is ignored if the Landscape Physical Material node is used in the landscape material.]`
- `float32 SplineFalloffModulationBias [Defines the offset to use when sampling the Spline Falloff Modulation Texture.]`
- `ESplineModulationColorMask SplineFalloffModulationColorMask [Defines which channel of the Spline Falloff Modulation Texture to use.]`
- `float32 SplineFalloffModulationScale [Allows to scale the value sampled from the Spline Falloff Modulation Texture.]`
- `UTexture2D SplineFalloffModulationTexture [Texture to modulate the Splines Falloff Layer Alpha]`
- `float32 SplineFalloffModulationTiling [Defines the tiling to use when sampling the Spline Falloff Modulation Texture.]`

---

