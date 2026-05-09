### FNiagaraVariableMetaData


**属性**:

- `TArray<FName> AlternateAliases [List of alternate/previous names for this variable. Note that this is not normally needed if you rename through the UX. However, if you delete and then add a different variable, intending for it to match, you will likely want to add the prior name here.

You may need to restart and reload assets after making this change to have it take effect on already loaded assets.]`
- `FText Description []`
- `EUnit DisplayUnit [The unit to display next to input fields for this parameter - note that this is only a visual indicator and does not change any of the calculations.]`
- `FNiagaraInputConditionMetadata EditCondition [Declares the associated input should be conditionally editable based on the value of another input.]`
- `FNiagaraBoolParameterMetaData InlineParameterBoolOverride [Useful to override inline bool visualization in the overview.]`
- `FLinearColor InlineParameterColorOverride [The color used to display a parameter in the overview. If no color is specified, the type color is used.]`
- `TArray<FNiagaraEnumParameterMetaData> InlineParameterEnumOverrides [The index of the entry maps to the index of an enum value. Useful for overriding how an enum parameter is displayed in the overview.]`
- `int InlineParameterSortPriority [Affects the sort order for parameters shown inline in the overview. Use a smaller number to push it to the top. Defaults to zero.]`
- `TMap<FName,FString> PropertyMetaData [Property Metadata]`
- `FNiagaraInputConditionMetadata VisibleCondition [Declares the associated input should be conditionally visible based on the value of another input.]`
- `FNiagaraInputParameterCustomization WidgetCustomization [Changes how the input is displayed.]`
- `bool bAdvancedDisplay [Declares that this input is advanced and should only be visible if expanded inputs have been expanded.]`
- `bool bDisplayInOverviewStack [Declares that this parameter's value will be shown in the overview node if it's set to a local value.]`
- `bool bEnableBoolOverride [Useful to override inline bool visualization in the overview.]`
- `bool bInlineEditConditionToggle [Declares the associated input is used as an inline edit condition toggle, so it should be hidden and edited as a
      checkbox inline with the input which was designated as its edit condition.]`
- `bool bOverrideColor [The color used to display a parameter in the overview. If no color is specified, the type color is used.]`


**方法**:

- `FNiagaraVariableMetaData& opAssign(FNiagaraVariableMetaData Other)`

---

