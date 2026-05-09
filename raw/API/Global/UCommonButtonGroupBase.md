### UCommonButtonGroupBase


Manages an arbitrary collection of CommonButton widgets.
Ensures that no more (and optionally, no less) than one button in the group is selected at a time

**属性**:

- `FSimpleButtonBaseGroupDelegate OnButtonBaseClicked`
- `FSimpleButtonBaseGroupDelegate OnButtonBaseDoubleClicked`
- `FSimpleButtonBaseGroupDelegate OnButtonBaseLockClicked`
- `FSimpleButtonBaseGroupDelegate OnButtonBaseLockDoubleClicked`
- `FSimpleButtonBaseGroupDelegate OnHoveredButtonBaseChanged`
- `FSimpleButtonBaseGroupDelegate OnSelectedButtonBaseChanged`
- `FOnSelectionCleared OnSelectionCleared`
- `bool bSelectionRequired [If true, the group will force that a button be selected at all times]`


**方法**:

- `DeselectAll()`  
  Deselects all buttons in the group.
- `int FindButtonIndex(const UCommonButtonBase ButtonToFind) const`  
  Find the button index of the specified button, if possible
@param ButtonToFind  Button to find the index of
@return Index of the button in the group. INDEX_NONE if not found
- `UCommonButtonBase GetButtonBaseAtIndex(int Index) const`
- `int GetButtonCount() const`
- `int GetHoveredButtonIndex() const`  
  Get the index of the currently hovered button, if any.
@param The index of the currently hovered button in the group, or -1 if there is no hovered button.
- `UCommonButtonBase GetSelectedButtonBase() const`
- `int GetSelectedButtonIndex() const`  
  Get the index of the currently selected button, if any.
@param The index of the currently selected button in the group, or -1 if there is no selected button.
- `bool HasAnyButtons() const`
- `SelectButtonAtIndex(int ButtonIndex, bool bAllowSound = true)`  
  Selects a button at a specific index in the group. Clears all selection if given an invalid index.
@param ButtonIndex The index of the button in the group to select
@param bAllowSound Whether the selected button should play its click sound
- `SelectNextButton(bool bAllowWrap = true)`  
  Selects the next button in the group
@param bAllowWrap Whether to wrap to the first button if the last one is currently selected
- `SelectPreviousButton(bool bAllowWrap = true)`  
  Selects the previous button in the group
@param bAllowWrap Whether to wrap to the first button if the last one is currently selected
- `SetSelectionRequired(bool bRequireSelection)`  
  Sets whether the group should always have a button selected.
@param bRequireSelection True to force the group to always have a button selected.
If true and nothing is selected, will select the first entry. If empty, will select the first button added.

---

