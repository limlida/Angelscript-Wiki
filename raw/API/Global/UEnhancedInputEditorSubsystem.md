### UEnhancedInputEditorSubsystem


The Enhanced Input Editor Subsystem can be used to process input outside of PIE within the editor.
Calling StartConsumingInput will allow the input preprocessor to drive Input Action delegates
to be fired in the editor.

This allows you to hook up Input Action delegates in Editor Utilities to make editor tools driven by
input.

**方法**:

- `bool IsConsumingInput() const`  
  Returns true if this subsystem is currently consuming input
- `bool PopInputComponent(UInputComponent InInputComponent)`  
  Removes this input component onto the stack to be processed by this subsystem's tick function
- `PushInputComponent(UInputComponent InInputComponent)`  
  Pushes this input component onto the stack to be processed by this subsystem's tick function
- `StartConsumingInput()`  
  Start the consumption of input messages in this subsystem. This is required to have any Input Action delegates be fired.
- `StopConsumingInput()`  
  Tells this subsystem to stop ticking and consuming any input. This will stop any Input Action Delegates from being called.

---

