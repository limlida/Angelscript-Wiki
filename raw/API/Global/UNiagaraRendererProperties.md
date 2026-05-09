### UNiagaraRendererProperties


Emitter properties base class
Each EmitterRenderer derives from this with its own class, and returns it in GetProperties; a copy
of those specific properties is stored on UNiagaraEmitter (on the System) for serialization
and handed back to the System renderer on load.

**属性**:

- `ENiagaraRendererMotionVectorSetting MotionVectorSetting [Hint about how to generate motion (velocity) vectors for this renderer.]`
- `FNiagaraPlatformSet Platforms [Platforms on which this renderer is enabled.]`
- `int SortOrderHint [By default, emitters are drawn in the order that they are added to the system. This value will allow you to control the order in a more fine-grained manner.
      Materials of the same type (i.e. Transparent) will draw in order from lowest to highest within the system. The default value is 0.]`
- `bool bAllowInCullProxies []`

---

