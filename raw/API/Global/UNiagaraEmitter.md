### UNiagaraEmitter


Niagara Emitters are particle spawners that can be reused for different effects by putting them into Niagara systems.
Emitters render their particles using different renderers, such as Sprite Renderers or Mesh Renderers to produce different effects.

Emitter assets cannot be spawned or used in a level directly, but need to be placed in a Niagara system. Emitters support inheritance, so that
changes to the base asset are automatically picked up by child emitter assets and emitters in system assets.

**属性**:

- `FSoftObjectPath PreviewMoviePath []`
- `FText TemplateAssetDescription []`
- `bool bIsInheritable [If an emitter is inheritable, new emitters based on an inheritable emitter, or Niagara Systems using an inheritable emitter, will automatically inherit changes made to the original emitter.]`

---

