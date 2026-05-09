### UComboBoxKey


The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.
Use OnGenerateConentWidgetEvent to return a custom built widget.

**属性**:

- `FMargin ContentPadding`
- `FSlateColor ForegroundColor [The foreground color to pass through the hierarchy.]`
- `FTableRowStyle ItemStyle [The item row style.]`
- `float32 MaxListHeight [The max height of the combobox list that opens]`
- `FGenerateWidgetEvent__ComboBoxKey OnGenerateContentWidget [Called when the widget is needed for the content.]`
- `FGenerateWidgetEvent__ComboBoxKey OnGenerateItemWidget [Called when the widget is needed for the item.]`
- `FOnOpeningEvent__ComboBoxKey OnOpening [Called when the combobox is opening]`
- `FOnSelectionChangedEvent__ComboBoxKey OnSelectionChanged [Called when a new item is selected in the combobox.]`
- `TArray<FName> Options []`
- `FScrollBarStyle ScrollBarStyle [The scroll bar style.]`
- `FName SelectedOption []`
- `FComboBoxStyle WidgetStyle [The combobox style.]`
- `bool bEnableGamepadNavigationMode [When false, directional keys will change the selection. When true, ComboBox
must be activated and will only capture arrow input while activated.]`
- `bool bHasDownArrow [When false, the down arrow is not generated and it is up to the API consumer
to make their own visual hint that this is a drop down.]`
- `bool bIsFocusable [When true, allows the combo box to receive keyboard focus]`


**方法**:

- `AddOption(FName Option)`  
  Add an element to the option list.
- `ClearOptions()`  
  Remove all the elements of the option list.
- `ClearSelection()`  
  Clear the current selection.
- `FName GetSelectedOption() const`  
  Get the current selected option
- `bool IsOpen() const`  
  Is the combobox menu opened.
- `bool RemoveOption(FName Option)`  
  Remove an element to the option list.
- `SetSelectedOption(FName Option)`  
  Set the current selected option.

---

