### AEditorUtilityActor


**属性**:

- `bool bReceivesEditorInput [If set to true, then this actor will be able to recieve input delegate callbacks when in the editor.]`


**方法**:

- `UInputComponent GetInputComponent() const`  
  Returns the current InputComponent on this utility actor. This will be NULL unless bReceivesEditorInput is set to true.
- `bool GetReceivesEditorInput() const`
- `Run()`  
  Standard function to execute
- `SetReceivesEditorInput(bool bInValue)`

---

