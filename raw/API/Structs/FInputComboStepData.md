### FInputComboStepData


**属性**:

- `const UInputAction ComboStepAction [The action that must be completed (according to Combo Step Completion States) to progress the combo]`
- `uint8 ComboStepCompletionStates [Trigger events that will complete this step - what events from this action should progress the combo]`
- `float32 TimeToPressKey [Time to press the key before combo is cancelled - starts once the previous step in the combo is completed
Note: This can be safely ignored for the first action in the combo]`


**方法**:

- `FInputComboStepData& opAssign(FInputComboStepData Other)`

---

