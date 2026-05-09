### UNiagaraLightRendererProperties


**属性**:

- `FVector3f ColorAdd [A static color shift applied to each rendered light]`
- `float32 DefaultExponent [The exponent to use for all lights if no exponent binding was found]`
- `float32 DiffuseScale [The diffuse scale to use for all lights if no binding was found]`
- `float32 InverseExposureBlend [Blend Factor used to blend between Intensity and Intensity/Exposure.
This is useful for gameplay lights that should have constant brighness on screen independent of current exposure.
This feature can cause issues with exposure particularly when used on the primary light on a scene, as such it's usage should be limited.]`
- `float32 RadiusScale [A factor used to scale each particle light radius]`
- `int RendererVisibility [If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.]`
- `ENiagaraRendererSourceDataMode SourceMode [Whether or not to draw a single element for the Emitter or to draw the particles.]`
- `float32 SpecularScale [The specular scale to use for all lights if no binding was found]`
- `bool bAffectsTranslucency [Whether lights from this renderer should affect translucency.
Use with caution - if enabled, create only a few particle lights at most, and the smaller they are, the less they will cost.]`
- `bool bAllowMegaLights [Whether lights from this renderer should be handled by MegaLights.
Use with caution - if enabled, create only a few particle lights at most and keep them as small as possible. Look out for increased noise and sampling cost.]`
- `bool bAlphaScalesBrightness [When checked, will treat the alpha value of the particle's color as a multiplier of the light's brightness.]`
- `bool bMegaLightsCastShadows [Whether lights from this renderer can cast shadows when handled by MegaLights.]`
- `bool bOverrideInverseExposureBlend [When enabled we will override the project default setting with our local setting.]`
- `bool bUseInverseSquaredFalloff [Whether to use physically based inverse squared falloff from the light.  If unchecked, the value from the LightExponent binding will be used instead.]`

---

