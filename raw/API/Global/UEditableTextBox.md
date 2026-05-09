### UEditableTextBox


Allows the user to type in custom text.  Only permits a single line of text to be entered.

* No Children
* Text Entry

**属性**:

- `bool AllowContextMenu [Whether the context menu can be opened]`
- `bool ClearKeyboardFocusOnCommit [Whether to clear keyboard focus when pressing enter to commit changes]`
- `FText HintText [Hint text that appears when there is no text in the text box]`
- `bool IsCaretMovedWhenGainFocus [Workaround as we lose focus when the auto completion closes.]`
- `bool IsPassword [Sets whether this text box is for storing a password]`
- `bool IsReadOnly [Sets the Text Box as Readonly to prevent it from being modified interactively by the user]`
- `ETextJustify Justification [How the text should be aligned with the margin.]`
- `EVirtualKeyboardType KeyboardType [If we're on a platform that requires a virtual keyboard, what kind of keyboard should this widget use?]`
- `float32 MinimumDesiredWidth [The minimum desired size for the text]`
- `FOnEditableTextBoxChangedEvent__EditableTextBox OnTextChanged [Called whenever the text is changed programmatically or interactively by the user]`
- `FOnEditableTextBoxCommittedEvent__EditableTextBox OnTextCommitted [Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.]`
- `ETextOverflowPolicy OverflowPolicy [Sets what happens to text that is clipped and doesn't fit within the clip rect for this widget]`
- `bool RevertTextOnEscape [Whether to allow the user to back out of changes when they press the escape key]`
- `bool SelectAllTextOnCommit [Whether to select all text when pressing enter to commit changes]`
- `bool SelectAllTextWhenFocused [Whether to select all text when the user clicks to give focus on the widget]`
- `FShapedTextOptions ShapedTextOptions [Controls how the text within this widget should be shaped.]`
- `EVirtualKeyboardDismissAction VirtualKeyboardDismissAction [What action should be taken when the virtual keyboard is dismissed?]`
- `FVirtualKeyboardOptions VirtualKeyboardOptions [Additional options to use for the virtual keyboard summoned by this widget]`
- `EVirtualKeyboardTrigger VirtualKeyboardTrigger [The type of event that will trigger the display of the virtual keyboard]`
- `FEditableTextBoxStyle WidgetStyle [The style]`


**方法**:

- `ClearError()`
- `FText GetText() const`  
  Gets the widget text
@return The widget text
- `bool HasError() const`
- `SetError(FText InError)`
- `SetForegroundColor(FLinearColor color)`
- `SetHintText(FText InText)`  
  Sets the Hint text that appears when there is no text in the text box
@param InHintText The text that appears when there is no text in the text box
- `SetIsPassword(bool bIsPassword)`
- `SetIsReadOnly(bool bReadOnly)`  
  Sets the Text as Readonly to prevent it from being modified interactively by the user
- `SetJustification(ETextJustify InJustification)`
- `SetText(FText InText)`  
  Directly sets the widget text.
Warning: This will wipe any binding created for the Text property!
@param InText The text to assign to the widget
- `SetTextOverflowPolicy(ETextOverflowPolicy InOverflowPolicy)`  
  Set the text overflow policy for this text box.

@param InOverflowPolicy the new text overflow policy.

---

