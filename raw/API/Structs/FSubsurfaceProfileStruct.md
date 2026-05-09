### FSubsurfaceProfileStruct


struct with all the settings we want in USubsurfaceProfile, separate to make it easer to pass this data around in the engine.

**属性**:

- `FLinearColor BoundaryColorBleed`
- `float32 ExtinctionScale`
- `float32 IOR`
- `ESubsurfaceImplementationTechniqueHint Implementation [This allows users to use mixed implementations for best quality and performance (e.g., High quality for skin with AFIS, and high performance on ice with Separable in the same scene).]`
- `float32 LobeMix`
- `FLinearColor MeanFreePathColor [Controls how far light goes into the subsurface in the Red, Green and Blue channel. It is scaled by Mean Free path distance.]`
- `float32 MeanFreePathDistance [Subsurface mean free path distance in world/unreal units (cm)]`
- `float32 NormalScale`
- `float32 Roughness0`
- `float32 Roughness1`
- `float32 ScatteringDistribution`
- `FLinearColor SurfaceAlbedo [It should match The base color of the corresponding material as much as possible.]`
- `FLinearColor Tint [Specifies the how much of the diffuse light gets into the material,
can be seen as a per-channel mix factor between the original image,
and the SSS-filtered image. It introduces Non-PBR looks.]`
- `FLinearColor TransmissionTintColor [Transmission tint control. It is multiplied on the transmission results. Works only when Burley is enabled.]`
- `float32 WorldUnitScale [Control the scale of world/unreal units (cm)]`
- `bool bEnableBurley [Effective only when Burley subsurface scattering is enabled in cmd.]`
- `bool bEnableMeanFreePath [Switch to use Mean Free Path, otherwise use diffuse mean free path.]`


**方法**:

- `FSubsurfaceProfileStruct& opAssign(FSubsurfaceProfileStruct Other)`

---

