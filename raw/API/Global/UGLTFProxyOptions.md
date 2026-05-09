### UGLTFProxyOptions


**属性**:

- `TMap<EGLTFMaterialPropertyGroup,FGLTFOverrideMaterialBakeSettings> DefaultInputBakeSettings [Input-specific default bake settings that override the general defaults above.]`
- `TextureFilter DefaultMaterialBakeFilter [Default filtering mode used when sampling the baked out texture. Can be overridden by material- and input-specific bake settings, see GLTFMaterialExportOptions.]`
- `FGLTFMaterialBakeSize DefaultMaterialBakeSize [Default size of the baked out texture (containing the material input). Can be overridden by material- and input-specific bake settings, see GLTFMaterialExportOptions.]`
- `TextureAddress DefaultMaterialBakeTiling [Default addressing mode used when sampling the baked out texture. Can be overridden by material- and input-specific bake settings, see GLTFMaterialExportOptions.]`
- `bool bBakeMaterialInputs [If enabled, a material input may be baked out to a texture (using a simple quad). Baking is only used for non-trivial material inputs (i.e. not simple texture or constant expressions).]`
- `bool bUseThinTranslucentShadingModel [If enabled, materials with shading model thin translucency will be used. Conversion is only partial.]`


**方法**:

- `ResetToDefault()`

---

