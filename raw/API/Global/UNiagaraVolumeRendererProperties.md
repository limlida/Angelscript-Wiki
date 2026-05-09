### UNiagaraVolumeRendererProperties


**属性**:

- `float32 LightingDownsampleFactor []`
- `UMaterialInterface Material [What material to use for the volume.]`
- `FNiagaraParameterBinding MaterialParameterBinding [Binding to material.]`
- `FNiagaraRendererMaterialParameters MaterialParameters [If this array has entries, we will create a MaterialInstanceDynamic per Emitter instance from Material and set the Material parameters using the Niagara simulation variables listed.]`
- `int RendererVisibility [If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.]`
- `float32 ShadowBiasFactor []`
- `float32 ShadowStepFactor []`
- `float32 StepFactor []`

---

