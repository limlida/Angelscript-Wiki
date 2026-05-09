### UInputComponent


Implement an Actor component for input bindings.

An Input Component is a transient component that enables an Actor to bind various forms of input events to delegate functions.
Input components are processed from a stack managed by the PlayerController and processed by the PlayerInput.
Each binding can consume the input event preventing other components on the input stack from processing the input.

@see https://docs.unrealengine.com/latest/INT/Gameplay/Input/index.html

**方法**:

- `BindAction(FName ActionName, EInputEvent KeyEvent, FInputActionHandlerDynamicSignature Delegate = FInputActionHandlerDynamicSignature ( ))`  
  Bind a function to be called when a key bound to this action triggers a specific keyevent.
Specified function must be a UFUNCTION() and takes a single FKey as its argument.
- `BindAxis(FName AxisName, FInputAxisHandlerDynamicSignature Delegate = FInputAxisHandlerDynamicSignature ( ))`  
  Bind a function to be called whenever a float axis bound to the specified axis name is changed.
Specified function must be a UFUNCTION() and takes a single float as its argument.
- `BindAxisKey(FName AxisKey, FInputAxisHandlerDynamicSignature Delegate = FInputAxisHandlerDynamicSignature ( ))`  
  Bind a function to be called whenever an axis specified by the given key changes. This bypasses any action bindings setup in project settings.
Specified function must be a UFUNCTION() and takes a single float as its argument.
- `BindChord(FInputChord Chord, EInputEvent KeyEvent, FInputActionHandlerDynamicSignature Delegate = FInputActionHandlerDynamicSignature ( ))`  
  Bind a specific key chord to a delegate. This bypasses any action bindings setup in project settings.
Specified function must be a UFUNCTION() and takes a single FKey as its argument.
- `BindKey(FKey Key, EInputEvent KeyEvent, FInputActionHandlerDynamicSignature Delegate = FInputActionHandlerDynamicSignature ( ), bool bConsumeInput = true)`  
  Bind a specific key to a delegate. This bypasses any action bindings setup in project settings.
Specified function must be a UFUNCTION() and takes a single FKey as its argument.
- `BindVectorAxis(FKey AxisKey, FInputVectorAxisHandlerDynamicSignature Delegate = FInputVectorAxisHandlerDynamicSignature ( ))`  
  Bind a function to be called whenever a vector axis specified by the given key changes.
Specified function must be a UFUNCTION() and takes a single FVector as its argument.
               GB.GestureDelegate = FInputGestureUnifiedDelegate(Delegate);

---

