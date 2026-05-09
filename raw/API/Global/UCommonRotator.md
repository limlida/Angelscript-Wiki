### UCommonRotator


A button that can rotate between given text labels.

**属性**:

- `UCommonTextBlock MyText [The displayed text]`
- `FOnRotated OnRotated`
- `FOnRotatedWithDirection OnRotatedWithDirection [Called when the Selected state of this button changes. Provides the direction of rotation.]`


**方法**:

- `OnOptionSelected(int Index)`
- `OnOptionsPopulated(int Count)`
- `int GetSelectedIndex() const`  
  Gets the current selected index
- `FText GetSelectedText() const`  
  Gets the current text value of the slider.
- `PopulateTextLabels(TArray<FText> Labels)`  
  Set the array of texts available
- `SetSelectedItem(int InValue)`  
  Sets the current value of the slider.
- `ShiftTextLeft()`  
  Shift the current text left.
- `ShiftTextRight()`  
  Shift the current text right.

---

