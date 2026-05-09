### UInputTriggerCombo


UInputTriggerCombo
All actions in the combo array must be completed (based on combo completion event specified - triggered, completed, etc.) to trigger the action this trigger is on.
Actions must also be completed in the order specified by the combo actions array (starting at index 0).
Note: This will only trigger for one frame before resetting the combo trigger's progress

**属性**:

- `TArray<FInputComboStepData> ComboActions [List of input actions that need to be completed (according to Combo Step Completion States) to trigger this action.
Input actions must be triggered in order (starting at index 0) to count towards the triggering of the combo.]`
- `int CurrentComboStepIndex [Keeps track of what action we're currently at in the combo]`
- `float32 CurrentTimeBetweenComboSteps [Time elapsed between last combo InputAction trigger and current time]`
- `TArray<FInputCancelAction> InputCancelActions [Actions that will cancel the combo if they are completed (according to Cancellation States)]`

---

