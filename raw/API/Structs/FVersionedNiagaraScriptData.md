### FVersionedNiagaraScriptData


Struct containing all of the data that can be different between different script versions.

**属性**:

- `FText Category [Used to break up scripts of the same Usage type in UI display.]`
- `FText CollapsedViewFormat [The format for the text to display in the stack if the value is collapsed.
This supports formatting placeholders for the function inputs, for example "myfunc({0}, {1})" will be converted to "myfunc(1.23, Particles.Position)".]`
- `FFilePath ConversionScriptAsset [Asset reference to a python script to run when converting this script to the recommended deprecation update script.]`
- `ENiagaraPythonUpdateScriptReference ConversionScriptExecution [Reference to a python script that is executed when the user updates from a previous version to this version.]`
- `TSubclassOf<UNiagaraConvertInPlaceUtilityBase> ConversionUtility [Custom logic to convert the contents of an existing script assignment to this script.]`
- `FText DebugDrawMessage [A message to display on UI actions handling debug draw state.]`
- `UNiagaraScript DeprecationRecommendation [Which script to use if this is deprecated.]`
- `FText Description []`
- `FText ExperimentalMessage [The message to display when a function is marked experimental.]`
- `TArray<FNiagaraInlineDynamicInputFormatToken> InlineExpressionFormat []`
- `TArray<FNiagaraInlineDynamicInputFormatToken> InlineGraphFormat []`
- `FText InlineOverviewDisplayName [If this script is displayed inline in the overview (dynamic input in the overview node for example), use this display name.
Should be short and concise.]`
- `FText Keywords [A list of space separated keywords which can be used to find this script in editor menus.]`
- `ENiagaraScriptLibraryVisibility LibraryVisibility [Defines if this script is visible to the user when searching for modules to add to an emitter.]`
- `int ModuleUsageBitmask [When used as a module, what are the appropriate script types for referencing this module?]`
- `FText NoteMessage [A message to display when adding the module to the stack. This is useful to highlight pitfalls or weird behavior of the module.]`
- `ENiagaraNumericOutputTypeSelectionMode NumericOutputTypeSelectionMode [The mode to use when deducing the type of numeric output pins from the types of the input pins.]`
- `TArray<FName> ProvidedDependencies [Array of Ids of dependencies provided by this module to other modules on the stack (e.g. 'ProvidesNormalizedAge')]`
- `FString PythonConversionScript [Python script to run when converting this script to the recommended deprecation update script.]`
- `TArray<FNiagaraModuleDependency> RequiredDependencies [Dependencies required by this module from other modules on the stack]`
- `TMap<FName,FString> ScriptMetaData [Script Metadata]`
- `bool bCanBeUsedForTypeConversions [If used as a dynamic input with exactly one input and output of different types, setting this to true will auto-insert this script to convert from one type to another when dragging and dropping parameters in the stack.
         For example, a script with a bool as input and a float as output will be automatically inserted in the stack when dropping a bool parameter into the float input of a module in the stack.]`
- `bool bExperimental [Is this script experimental and less supported?]`
- `bool bSuggested [If true, this script will be added to a 'Suggested' category at the top of menus during searches]`
- `bool bUsePythonScriptConversion [If true then a python script will be executed when changing from this script to the selected deprectation recommendation. This allows the current script to transfer its inputs to the new script.]`


**方法**:

- `FVersionedNiagaraScriptData& opAssign(FVersionedNiagaraScriptData Other)`

---

