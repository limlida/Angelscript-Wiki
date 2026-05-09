### UEnhancedInputComponent


Implement an Actor component for input bindings.

An Enhanced Input Component is a transient component that enables an Actor to bind enhanced actions to delegate functions, or monitor those actions.
Input components are processed from a stack managed by the PlayerController and processed by the PlayerInput.
These bindings will not consume input events, but this behaviour can be replicated using UInputMappingContext::Priority.

@see https://docs.unrealengine.com/latest/INT/Gameplay/Input/index.html

**方法**:

- `SetShouldFireDelegatesInEditor(bool bInNewValue)`
- `bool ShouldFireDelegatesInEditor() const`
- `bool HasBindings() const`
- `ClearActionEventBindings() const`
- `ClearActionValueBindings() const`
- `ClearDebugKeyBindings() const`
- `ClearActionBindings() const`
- `ClearBindingsForObject(UObject InOwner)`
- `bool RemoveActionEventBinding(int BindingIndex)`
- `bool RemoveDebugKeyBinding(int BindingIndex)`
- `bool RemoveActionValueBinding(int BindingIndex)`
- `bool RemoveBindingByHandle(uint BindingIndex)`
- `bool RemoveBinding(FInputBindingHandle BindingToRemove)`
- `bool RemoveBinding(FEnhancedInputActionEventBinding BindingToRemove)`
- `bool RemoveBinding(FEnhancedInputActionValueBinding BindingToRemove)`
- `bool RemoveBinding(FInputDebugKeyBinding BindingToRemove)`
- `FEnhancedInputActionEventBinding& BindAction(const UInputAction Action, ETriggerEvent TriggerEvent, FEnhancedInputActionHandlerDynamicSignature Delegate)`
- `FEnhancedInputActionValueBinding& BindActionValue(const UInputAction Action)`
- `FInputDebugKeyBinding& BindDebugKey(FInputChord Chord, EInputEvent KeyEvent, FInputDebugKeyHandlerDynamicSignature Delegate, bool bExecuteWhenPaused = true)`
- `FInputActionValue GetBoundActionValue(const UInputAction Action)`

---

