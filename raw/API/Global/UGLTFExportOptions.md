### UGLTFExportOptions


**属性**:

- `EGLTFMaterialBakeMode BakeMaterialInputs [Bake mode determining if and how a material input is baked out to a texture. Baking is only used for non-trivial material inputs (i.e. not simple texture or constant expressions).]`
- `TMap<EGLTFMaterialPropertyGroup,FGLTFOverrideMaterialBakeSettings> DefaultInputBakeSettings [Input-specific default bake settings that override the general defaults above.]`
- `int DefaultLevelOfDetail [Default LOD level used for exporting a mesh. Can be overridden by component or asset settings (e.g. minimum or forced LOD level).]`
- `TextureFilter DefaultMaterialBakeFilter [Default filtering mode used when sampling the baked out texture. Can be overridden by material- and input-specific bake settings, see GLTFMaterialExportOptions.]`
- `FGLTFMaterialBakeSize DefaultMaterialBakeSize [Default size of the baked out texture (containing the material input). Can be overridden by material- and input-specific bake settings, see GLTFMaterialExportOptions.]`
- `TextureAddress DefaultMaterialBakeTiling [Default addressing mode used when sampling the baked out texture. Can be overridden by material- and input-specific bake settings, see GLTFMaterialExportOptions.]`
- `EGLTFMaterialVariantMode ExportMaterialVariants [Mode determining if and how to export material variants that change the materials property on a static or skeletal mesh component.]`
- `float32 ExportUniformScale [Scale factor used for exporting all assets (0.01 by default) for conversion from centimeters (Unreal default) to meters (glTF).]`
- `EGLTFTextureImageFormat TextureImageFormat [Desired image format used for exported textures.]`
- `int TextureImageQuality [Level of compression used for textures exported with lossy image formats, 0 (default) or value between 1 (worst quality, best compression) and 100 (best quality, worst compression).]`
- `bool bAdjustNormalmaps [If enabled, exported normalmaps will be adjusted from Unreal to glTF convention (i.e. the green channel is flipped).]`
- `bool bExportAnimationSequences [If enabled, export single animation asset used by a skeletal mesh component. Export of vertex skin weights must be enabled.]`
- `bool bExportCameras [If enabled, export camera components.]`
- `bool bExportClearCoatMaterials [If enabled, materials with shading model clear coat will be properly exported. Uses extension KHR_materials_clearcoat.]`
- `bool bExportClothMaterials [If enabled, materials with shading model cloth will be properly exported. Uses extension KHR_materials_sheen.]`
- `bool bExportEmissiveStrength [If enabled, allows materials to have an emissive factor that exceeds the standard range [0.0, 1.0]. Uses extension KHR_materials_emissive_strength.]`
- `bool bExportHiddenInGame [If enabled, export actors and components that are flagged as hidden in-game.]`
- `bool bExportLevelSequences [If enabled, export level sequences. Only transform tracks are currently supported. The level sequence will be played at the assigned display rate.]`
- `bool bExportLightmaps [If enabled, export lightmaps (created by Lightmass) when exporting a level. Uses extension EPIC_lightmap_textures, which is supported by Unreal's glTF viewer.]`
- `bool bExportLights [If enabled, export directional, point, and spot light components. Uses extension KHR_lights_punctual.
Also exports IES light profiles using the EXT_lights_ies extension.]`
- `bool bExportMorphTargets [If enabled, exports Morph Targets.]`
- `bool bExportPreviewMesh [If enabled, the preview mesh for a standalone animation or material asset will also be exported.]`
- `bool bExportProxyMaterials [If enabled, materials that have a proxy defined in their user data, will be exported using that proxy instead. This setting won't affect proxy materials exported or referenced directly.]`
- `bool bExportSourceModel [If enabled, exports the SourceModel. If false, exports the Render Data.]`
- `bool bExportSpecularGlossinessMaterials [If enabled, materials using the Importer's SpecularGlossiness material function will be exported. Uses extension KHR_materials_pbrSpecularGlossiness.]`
- `bool bExportTextureTransforms [If enabled, export UV offset and scale/tiling used in materials. Uses extension KHR_texture_transform.]`
- `bool bExportThinTranslucentMaterials [If enabled, materials with shading model thin translucency will be exported. Export is only partial. Uses extension KHR_materials_transmission.]`
- `bool bExportUnlitMaterials [If enabled, materials with shading model unlit will be properly exported. Uses extension KHR_materials_unlit.]`
- `bool bExportVertexColors [If enabled, export vertex color. Not recommended due to vertex colors always being used as a base color multiplier in glTF, regardless of material. Often producing undesirable results.]`
- `bool bExportVertexSkinWeights [If enabled, export vertex bone weights and indices in skeletal meshes. Necessary for animation sequences.]`
- `bool bIncludeCopyrightNotice [If enabled, the copyright notice from project settings will be included as metadata in the glTF asset.]`
- `bool bMakeSkinnedMeshesRoot [If enabled, make skeletal meshes into root nodes to strictly comply with the glTF specification. Final bone transforms remain the same and visual results are unaffected.]`
- `bool bSkipNearDefaultValues [If enabled, floating-point-based JSON properties that are nearly equal to their default value will not be exported and thus regarded as exactly default, reducing JSON size.]`
- `bool bUseImporterMaterialMapping [If enabled, materials imported with the Interchange-glTF importer will be directly mapped for the Exporter. bExport material options below will be ignored.]`
- `bool bUseMeshQuantization [If enabled, use quantization for vertex tangents and normals, reducing size. Requires extension KHR_mesh_quantization, which may result in the mesh not loading in some glTF viewers.]`


**方法**:

- `ResetToDefault()`

---

