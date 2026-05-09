### UMultiLineEditableText


Editable text box widget

**属性**:

- `bool AllowContextMenu [Whether the context menu can be opened]`
- `bool ClearKeyboardFocusOnCommit [Whether to clear keyboard focus when pressing enter to commit changes]`
- `bool ClearTextSelectionOnFocusLoss [Whether to clear text selection when focus is lost]`
- `FOnMultiLineEditableTextChangedEvent__MultiLineEditableText OnTextChanged [Called whenever the text is changed programmatically or interactively by the user]`
- `FOnMultiLineEditableTextCommittedEvent__MultiLineEditableText OnTextCommitted [Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.]`
- `bool RevertTextOnEscape [Whether to allow the user to back out of changes when they press the escape key]`
- `bool SelectAllTextWhenFocused [Whether to select all text when the user clicks to give focus on the widget]`
- `EVirtualKeyboardDismissAction VirtualKeyboardDismissAction [What action should be taken when the virtual keyboard is dismissed?]`
- `FVirtualKeyboardOptions VirtualKeyboardOptions [Additional options for the virtual keyboard]`
- `FTextBlockStyle WidgetStyle [The style]`
- `bool bIsReadOnly [Sets the Text as Readonly to prevent it from being modified interactively by the user]`


**方法**:

- `FSlateFontInfo GetFont() const`
- `FText GetHintText() const`  
  Returns the Hint text that appears when there is no text in the text box
- `FText GetText() const`  
  Gets the widget text
@return The widget text
- `SetFont(FSlateFontInfo InFontInfo)`
- `SetFontMaterial(UMaterialInterface InMaterial)`
- `SetFontOutlineMaterial(UMaterialInterface InMaterial)`
- `SetHintText(FText InHintText)`  
  Sets the Hint text that appears when there is no text in the text box
@param InHintText The text that appears when there is no text in the text box
- `SetIsReadOnly(bool bReadOnly)`  
  Sets the Text as Readonly to prevent it from being modified interactively by the user
- `SetText(FText InText)`  
  Directly sets the widget text.
@param InText The text to assign to the widget
- `SetWidgetStyle(FTextBlockStyle InWidgetStyle)`

---

