### UNiagaraDecalRendererProperties


**属性**:

- `float32 DecalScreenSizeFade [When the decal is smaller than this screen size fade out the decal, can be used to reduce the amount of small decals drawn.]`
- `UMaterialInterface Material [What material to use for the decal.]`
- `FNiagaraParameterBinding MaterialParameterBinding [Binding to material.]`
- `FNiagaraRendererMaterialParameters MaterialParameters [If this array has entries, we will create a MaterialInstanceDynamic per Emitter instance from Material and set the Material parameters using the Niagara simulation variables listed.]`
- `int RendererVisibility [If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.]`
- `ENiagaraRendererSourceDataMode SourceMode [Whether or not to draw a single element for the Emitter or to draw the particles.]`

---

