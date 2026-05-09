### FNiagaraRibbonUVSettings


Defines settings for UV behavior for a UV channel on ribbons.

**属性**:

- `ENiagaraRibbonUVDistributionMode DistributionMode [Specifies how ribbon UVs are distributed along the length of a ribbon.]`
- `ENiagaraRibbonUVEdgeMode LeadingEdgeMode [Specifies how UVs transition into life at the leading edge of the ribbon.]`
- `FVector2D Offset [Specifies an additional offset which is applied to the UV range]`
- `FVector2D Scale [Specifies an additional scaler which is applied to the UV range.]`
- `float32 TilingLength [Specifies the length in world units to use when tiling UVs across the ribbon when using one of the tiled distribution modes.]`
- `ENiagaraRibbonUVEdgeMode TrailingEdgeMode [Specifies how UVs transition out of life at the trailing edge of the ribbon.]`
- `bool bEnablePerParticleUOverride [Enables overriding the U component with values read from the particles. When enabled, edge behavior and distribution are ignored.]`
- `bool bEnablePerParticleVRangeOverride [Enables overriding the range of the V component with values read from the particles.]`


**方法**:

- `FNiagaraRibbonUVSettings& opAssign(FNiagaraRibbonUVSettings Other)`

---

