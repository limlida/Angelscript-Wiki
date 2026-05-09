### FNiagaraBoolParameterMetaData


**属性**:

- `ENiagaraBoolDisplayMode DisplayMode [The mode used determines the cases in which a bool parameter is displayed.
If set to DisplayAlways, both True and False cases will display.
If set to DisplayIfTrue, it will only display if the bool evaluates to True.]`
- `UTexture2D IconOverrideFalse [If specified, this icon will be used for the given bool if it evaluates to False. If OverrideName isn't empty, the icon takes priority.]`
- `UTexture2D IconOverrideTrue [If specified, this icon will be used for the given bool if it evaluates to True. If OverrideName isn't empty, the icon takes priority.]`
- `FName OverrideNameFalse [If specified, this name will be used for the given bool if it evaluates to False.]`
- `FName OverrideNameTrue [If specified, this name will be used for the given bool if it evaluates to True.]`


**方法**:

- `FNiagaraBoolParameterMetaData& opAssign(FNiagaraBoolParameterMetaData Other)`

---

