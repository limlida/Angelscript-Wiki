### UMaterialEditorInstanceConstant


**属性**:

- `FMaterialInstanceBasePropertyOverrides BasePropertyOverrides []`
- `TArray<TSoftObjectPtr<UObject>> EnumerationObjects [Array of enumeration objects for use by scalar parameter enumeration indices.]`
- `FLightmassParameterizedMaterialSettings LightmassSettings [The Lightmass override settings for this object.]`
- `UMaterialInterface NaniteOverrideMaterial [An override material which will be used instead of this one when rendering with nanite.]`
- `TArray<FEditorParameterGroup> ParameterGroups []`
- `UMaterialInterface Parent [since the Parent may point across levels and the property editor needs to import this text, it must be marked lazy so it doesn't set itself to NULL in FindImportedObject]`
- `UPhysicalMaterial PhysMaterial [Physical material to use for this graphics material. Used for sounds, effects etc.]`
- `FMaterialEditorPostProcessOverrides PostProcessOverrides [Overrides specific to Post Process domain materials.]`
- `float32 RefractionDepthBias [This is the refraction depth bias, larger values offset distortion to prevent closer objects from rendering into the distorted surface at acute viewing angles but increases the disconnect between surface and where the refraction starts.]`
- `USpecularProfile SpecularProfile [Specular profile]`
- `USubsurfaceProfile SubsurfaceProfile [SubsurfaceProfile, for Screen Space Subsurface Scattering]`
- `bool bNaniteOverride [When set we will use the override from NaniteOverrideMaterial. Otherwise we inherit any override on the parent.]`
- `bool bOverrideSpecularProfile [Defines if SpecularProfile from this instance is used or it uses the parent one.]`
- `bool bOverrideSubsurfaceProfile [Defines if SubsurfaceProfile from this instance is used or it uses the parent one.]`
- `bool bUseOldStyleMICEditorGroups [Should we use old style typed arrays for unassigned parameters instead of a None group (new style)?]`

---

