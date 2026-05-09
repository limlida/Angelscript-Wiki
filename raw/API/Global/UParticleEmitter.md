### UParticleEmitter


**属性**:

- `uint DetailModeBitmask [Detail mode: Set flags reflecting which system detail mode you want the emitter to be ticked and rendered in]`
- `FColor EmitterEditorColor [The color of the emitter in the curve editor and debug rendering modes.]`
- `FName EmitterName [The name of the emitter.]`
- `EEmitterRenderMode EmitterRenderMode [How to render the emitter particles. Can be one of the following:
        ERM_Normal      - As the intended sprite/mesh
        ERM_Point       - As a 2x2 pixel block with no scaling and the color set in EmitterEditorColor
        ERM_Cross       - As a cross of lines, scaled to the size of the particle in EmitterEditorColor
        ERM_None        - Do not render]`
- `int InitialAllocationCount [Initial allocation count - overrides calculated peak count if > 0]`
- `float32 QualityLevelSpawnRateScale []`
- `EParticleSignificanceLevel SignificanceLevel [The significance level required of this emitter's owner for this emitter to be active.]`
- `bool bCollapsed [This value indicates the emitter should be drawn 'collapsed' in Cascade]`
- `bool bDisableWhenInsignficant [When true, emitters deemed insignificant will have their tick and render disabled Instantly. When false they will simple stop spawning new particles.]`
- `bool bDisabledLODsKeepEmitterAlive [When true, if the current LOD is disabled the emitter will be kept alive. Otherwise, the emitter will be considered complete if the current LOD is disabled.]`
- `bool bUseLegacySpawningBehavior [If true, maintains some legacy spawning behavior.]`

---

