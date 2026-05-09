### UComboBoxString


The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.

**属性**:

- `FMargin ContentPadding`
- `TArray<FString> DefaultOptions [The default list of items to be displayed on the combobox.]`
- `bool EnableGamepadNavigationMode [When false, directional keys will change the selection. When true, ComboBox
must be activated and will only capture arrow input while activated.]`
- `FSlateFontInfo Font [The default font to use in the combobox, only applies if you're not implementing OnGenerateWidgetEvent
to factory each new entry.]`
- `FSlateColor ForegroundColor [The foreground color to pass through the hierarchy.]`
- `bool HasDownArrow [When false, the down arrow is not generated and it is up to the API consumer
to make their own visual hint that this is a drop down.]`
- `FTableRowStyle ItemStyle [The item row style.]`
- `float32 MaxListHeight [The max height of the combobox list that opens]`
- `FGenerateWidgetForString__Widget OnGenerateWidgetEvent [Called when the widget is needed for the item.]`
- `FOnOpeningEvent__ComboBoxString OnOpening [Called when the combobox is opening]`
- `FOnSelectionChangedEvent__ComboBoxString OnSelectionChanged [Called when a new item is selected in the combobox.]`
- `FScrollBarStyle ScrollBarStyle [The scroll bar style.]`
- `FString SelectedOption [The item in the combobox to select by default]`
- `FComboBoxStyle WidgetStyle [The style.]`
- `bool bIsFocusable`


**方法**:

- `AddOption(FString Option)`
- `ClearOptions()`
- `ClearSelection()`
- `int FindOptionIndex(FString Option) const`
- `FString GetOptionAtIndex(int Index) const`
- `int GetOptionCount() const`  
  Returns the number of options
- `int GetSelectedIndex() const`
- `FString GetSelectedOption() const`
- `bool IsOpen() const`
- `RefreshOptions()`  
  Refreshes the list of options.  If you added new ones, and want to update the list even if it's
currently being displayed use this.
- `bool RemoveOption(FString Option)`
- `SetSelectedIndex(int Index)`
- `SetSelectedOption(FString Option)`

---

