### UEditableText


Editable text box widget

**属性**:

- `bool AllowContextMenu [Whether the context menu can be opened]`
- `bool ClearKeyboardFocusOnCommit [Whether to clear keyboard focus when pressing enter to commit changes]`
- `bool EnableIntegratedKeyboard [Whether the integrated keyboard is enabled for this editable text.]`
- `bool IsCaretMovedWhenGainFocus [When set to true the caret is moved when gaining focus]`
- `bool IsPassword [Sets whether this text box is for storing a password]`
- `bool IsReadOnly [Sets whether this text box can actually be modified interactively by the user]`
- `EVirtualKeyboardType KeyboardType [If we're on a platform that requires a virtual keyboard, what kind of keyboard should this widget use?]`
- `float32 MinimumDesiredWidth [The minimum desired Width for the text]`
- `FOnEditableTextChangedEvent__EditableText OnTextChanged [Called whenever the text is changed programmatically or interactively by the user]`
- `FOnEditableTextCommittedEvent__EditableText OnTextCommitted [Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.]`
- `ETextOverflowPolicy OverflowPolicy [Sets what happens to text that is clipped and doesn't fit within the clip rect for this widget]`
- `bool RevertTextOnEscape [Whether to allow the user to back out of changes when they press the escape key]`
- `bool SelectAllTextOnCommit [Whether to select all text when pressing enter to commit changes]`
- `bool SelectAllTextWhenFocused [Whether to select all text when the user clicks to give focus on the widget]`
- `FShapedTextOptions ShapedTextOptions [Controls how the text within this widget should be shaped.]`
- `EVirtualKeyboardDismissAction VirtualKeyboardDismissAction [What action should be taken when the virtual keyboard is dismissed?]`
- `FVirtualKeyboardOptions VirtualKeyboardOptions [Additional options for the virtual keyboard]`
- `EVirtualKeyboardTrigger VirtualKeyboardTrigger []`
- `FEditableTextStyle WidgetStyle [The style]`


**方法**:

- `FSlateFontInfo GetFont() const`
- `FText GetHintText() const`  
  Gets the Hint text that appears when there is no text in the text box
- `ETextJustify GetJustification() const`
- `FText GetText() const`  
  Gets the widget text
@return The widget text
- `SetFont(FSlateFontInfo InFontInfo)`
- `SetFontMaterial(UMaterialInterface InMaterial)`
- `SetFontOutlineMaterial(UMaterialInterface InMaterial)`
- `SetHintText(FText InHintText)`
- `SetIsPassword(bool InbIsPassword)`
- `SetIsReadOnly(bool InbIsReadyOnly)`
- `SetJustification(ETextJustify InJustification)`
- `SetMinimumDesiredWidth(float32 InMinDesiredWidth)`  
  Set the minimum desired width for this text box

@param InMinDesiredWidth new minimum desired width
- `SetText(FText InText)`  
  Directly sets the widget text.
Warning: This will wipe any binding created for the Text property!
@param InText The text to assign to the widget
- `SetTextOverflowPolicy(ETextOverflowPolicy InOverflowPolicy)`
- `ToggleVirtualKeyboard(bool bShow)`  
  Function to spawn virtual keyboard on demand

---

