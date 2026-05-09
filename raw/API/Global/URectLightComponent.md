### URectLightComponent


A light component which emits light from a rectangle.

**属性**:

- `float32 BarnDoorAngle [Angle of barn door attached to the light source rect.]`
- `float32 BarnDoorLength [Length of barn door attached to the light source rect.]`
- `float32 LightFunctionConeAngle [Aperture of cone angle for the perspective projection of the light function material.
If 0, an orthographic projection is used instead.]`
- `float32 SourceHeight [Height of light source rect.
Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.]`
- `UTexture SourceTexture [Texture mapped to the light source rectangle]`
- `FVector2f SourceTextureOffset [Offsets the source texture. Value in 0..1. (default=0)]`
- `FVector2f SourceTextureScale [Scales the source texture. Value in 0..1. (default=1)]`
- `float32 SourceWidth [Width of light source rect.
Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.]`


**方法**:

- `SetBarnDoorAngle(float32 NewValue)`
- `SetBarnDoorLength(float32 NewValue)`
- `SetSourceHeight(float32 NewValue)`
- `SetSourceTexture(UTexture NewValue)`
- `SetSourceWidth(float32 NewValue)`

---

