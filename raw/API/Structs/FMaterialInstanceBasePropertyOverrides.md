### FMaterialInstanceBasePropertyOverrides


Properties from the base material that can be overridden in material instances.

**属性**:

- `EBlendMode BlendMode [The blend mode]`
- `FDisplacementFadeRange DisplacementFadeRange []`
- `FDisplacementScaling DisplacementScaling []`
- `bool DitheredLODTransition [Whether the material should support a dithered LOD transition when used with the foliage system.]`
- `float32 MaxWorldPositionOffsetDisplacement [The maximum World Position Offset distance. Zero means no maximum.]`
- `float32 OpacityMaskClipValue [If BlendMode is BLEND_Masked, the surface is not rendered where OpacityMask < OpacityMaskClipValue.]`
- `EMaterialShadingModel ShadingModel [The shading model]`
- `bool TwoSided [Indicates that the material should be rendered without backface culling and the normal should be flipped for backfaces.]`
- `bool bCastDynamicShadowAsMasked [Whether the material should cast shadows as masked even though it has a translucent blend mode.]`
- `bool bCompatibleWithLumenCardSharing [When true, allows to share Lumen Cards between different instances even when material uses world position or per instance data, which may change material look per instance. All materials on a component needs this flag set for sharing to work.]`
- `bool bEnableDisplacementFade [Whether or not displacement fade is enabled.]`
- `bool bEnableTessellation [Whether or not tessellation is enabled. Required for displacement to work.]`
- `bool bHasPixelAnimation [Whether the opaque material has any pixel animations happening, that isn't included in the geometric velocities.
This allows to disable renderer's heuristics that assumes animation is fully described with motion vector, such as TSR's anti-flickering heuristic.]`
- `bool bIsThinSurface [Indicates that the material should be rendered as.]`
- `bool bOutputTranslucentVelocity [Whether the material should output velocity even though it has a translucent blend mode.]`
- `bool bOverride_BlendMode [Enables override of the blend mode.]`
- `bool bOverride_CastDynamicShadowAsMasked [Enables override of whether to shadow using masked opacity on translucent materials.]`
- `bool bOverride_CompatibleWithLumenCardSharing [Enables override of the bCompatibleWithLumenCardSharing property.]`
- `bool bOverride_DisplacementFadeRange [Enables override of the displacement fading range.]`
- `bool bOverride_DisplacementScaling [Enables override of the displacement magnitude and center property.]`
- `bool bOverride_DitheredLODTransition [Enables override of the dithered LOD transition property.]`
- `bool bOverride_MaxWorldPositionOffsetDisplacement [Enables override of the max world position offset property.]`
- `bool bOverride_OpacityMaskClipValue [Enables override of the opacity mask clip value.]`
- `bool bOverride_OutputTranslucentVelocity [Enables override of the output velocity property.]`
- `bool bOverride_ShadingModel [Enables override of the shading model.]`
- `bool bOverride_TwoSided [Enables override of the two sided property.]`
- `bool bOverride_bEnableDisplacementFade [Enables override of the eanble displacement fade property.]`
- `bool bOverride_bEnableTessellation [Enables override of the enable tessellation property.]`
- `bool bOverride_bHasPixelAnimation [Enables override of the has pixel animation property.]`
- `bool bOverride_bIsThinSurface [Enables override of the IsThinSurface property.]`


**方法**:

- `FMaterialInstanceBasePropertyOverrides& opAssign(FMaterialInstanceBasePropertyOverrides Other)`

---

