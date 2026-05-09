### UMultiLineEditableTextBox


Allows a user to enter multiple lines of text

**属性**:

- `bool AllowContextMenu [Whether the context menu can be opened]`
- `FOnMultiLineEditableTextBoxChangedEvent__MultiLineEditableTextBox OnTextChanged [Called whenever the text is changed programmatically or interactively by the user]`
- `FOnMultiLineEditableTextBoxCommittedEvent__MultiLineEditableTextBox OnTextCommitted [Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.]`
- `EVirtualKeyboardDismissAction VirtualKeyboardDismissAction [What action should be taken when the virtual keyboard is dismissed?]`
- `FVirtualKeyboardOptions VirtualKeyboardOptions [Additional options to be used by the virtual keyboard summoned from this widget]`
- `FEditableTextBoxStyle WidgetStyle [The style]`
- `bool bIsReadOnly [Sets the Text as Readonly to prevent it from being modified interactively by the user]`


**方法**:

- `FText GetHintText() const`  
  Returns the Hint text that appears when there is no text in the text box
- `FText GetText() const`  
  Gets the widget text
@return The widget text
- `SetError(FText InError)`
- `SetForegroundColor(FLinearColor color)`
- `SetHintText(FText InHintText)`  
  Sets the Hint text that appears when there is no text in the text box
@param InHintText The text that appears when there is no text in the text box
- `SetIsReadOnly(bool bReadOnly)`  
  Sets the Text as Readonly to prevent it from being modified interactively by the user
- `SetText(FText InText)`  
  Directly sets the widget text.
Warning: This will wipe any binding created for the Text property!
@param InText The text to assign to the widget
- `SetTextStyle(FTextBlockStyle InTextStyle)`

---

