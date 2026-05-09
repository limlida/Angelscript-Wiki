### FSpecularProfileStruct


struct with all the settings we want in USpecularProfile, separate to make it easer to pass this data around in the engine.

**属性**:

- `ESpecularProfileFormat Format [Define the format driving the sampling of the specular LUT.]`
- `FRuntimeCurveLinearColor LightColor [Define the light facing color
Exemple with View/Light mode: color at 0 is applied when NoL=0 (light hit the surface at grazing angle)  while color at 1 is applied when NoV=1 (light hit the surface at facing angle).]`
- `UTexture2D Texture [Define the texture used as a specular profile]`
- `FRuntimeCurveLinearColor ViewColor [Define the view facing color.
Exemple with View/Light mode: color at 0 is applied when NoV=0 (view grazing angle)  while color at 1 is applied when NoV=1 (view facing angle).]`


**方法**:

- `FSpecularProfileStruct& opAssign(FSpecularProfileStruct Other)`

---

