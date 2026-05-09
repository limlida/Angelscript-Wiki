### FNiagaraInputParameterCustomization


**属性**:

- `TArray<FNiagaraWidgetNamedIntegerInputValue> EnumStyleDropdownValues []`
- `TArray<FWidgetNamedInputValue> InputDropdownValues []`
- `int MaxSegmentsPerRow [Limits the number of buttons shown per row, 0 = unlimited]`
- `float32 MaxValue [max ui value (float and int types only)]`
- `float32 MinValue [min ui value (float and int types only)]`
- `TArray<FWidgetSegmentValueOverride> SegmentValueOverrides []`
- `float32 StepWidth [Step width used by the input when dragging]`
- `ENiagaraInputWidgetType WidgetType [Changes the widget implementation used for the input]`
- `bool bBroadcastValueChangesOnCommitOnly [If set to true then values will not be updated while typing, only when committing the input field. This is useful for values that cause big downstream changes and computational overhead, like grid size or spawned particles.]`
- `bool bHasMaxValue []`
- `bool bHasMinValue []`
- `bool bHasStepWidth []`


**方法**:

- `FNiagaraInputParameterCustomization& opAssign(FNiagaraInputParameterCustomization Other)`

---

