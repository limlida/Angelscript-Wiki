### UMaterialInstanceConstant


Material Instances may be used to change the appearance of a material without incurring an expensive recompilation of the material.
General modification of the material cannot be supported without recompilation, so the instances are limited to changing the values of
predefined material parameters. The parameters are statically defined in the compiled material by a unique name, type and default value.

**属性**:

- `UPhysicalMaterialMask PhysMaterialMask [Physical material mask to use for this graphics material. Used for sounds, effects etc.]`


**方法**:

- `float32 GetScalarParameterValue(FName ParameterName)`  
  Get the scalar (float) parameter value from an MIC
- `UTextureCollection GetTextureCollectionParameterValue(FName ParameterName)`  
  Get the MIC texture collection parameter value
- `UTexture GetTextureParameterValue(FName ParameterName)`  
  Get the MIC texture parameter value
- `FLinearColor GetVectorParameterValue(FName ParameterName)`  
  Get the MIC vector parameter value
- `SetNaniteOverrideMaterial(bool bInEnableOverride, UMaterialInterface InOverrideMaterial)`  
  Set an override material which will be used when rendering with nanite.

---

