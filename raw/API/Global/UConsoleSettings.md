### UConsoleSettings


Implements the settings for the UConsole class.

**属性**:

- `FColor AutoCompleteCVarColor [The autocomplete color used for mutable CVars.]`
- `FColor AutoCompleteCommandColor [The autocomplete color used for executable commands.]`
- `FColor AutoCompleteFadedColor [The autocomplete color used for command descriptions and read-only CVars.]`
- `TArray<FString> AutoCompleteMapPaths [List of relative paths (e.g. Content/Maps) to search for map names for auto-complete usage. Specified in BaseInput.ini.]`
- `float32 BackgroundOpacityPercentage [Amount of transparency of the console background.]`
- `FColor HistoryColor [The color used for the previously typed commands history.]`
- `FColor InputColor [The color used for text input.]`
- `TArray<FAutoCompleteCommand> ManualAutoCompleteList [Manual list of auto-complete commands and info specified in BaseInput.ini]`
- `int MaxScrollbackSize [The maximum number of lines the console keeps in its output history.]`
- `bool bDisplayHelpInAutoComplete [Display the first line of any available help text in the auto-complete window, if a description isn't available]`
- `bool bOrderTopToBottom [Whether we legacy bottom-to-top ordering or regular top-to-bottom ordering]`

---

