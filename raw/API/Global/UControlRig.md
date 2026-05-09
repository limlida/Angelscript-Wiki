### UControlRig


Runs logic for mapping input data to transforms (the "Rig")

**属性**:

- `FOnControlSelectedBP__ControlRig OnControlSelected_BP`


**方法**:

- `bool ClearControlSelection(bool bSetupUndo = false)`  
  @param bSetupUndo If set to true the stack will record the change for undo / redo
- `UTransformableControlHandle CreateTransformableControlHandle(FName ControlName) const`  
  Creates a transformable control handle for the specified control to be used by the constraints system. Should use the UObject from
      ConstraintsScriptingLibrary::GetManager(UWorld* InWorld)
- `TArray<FName> CurrentControlSelection() const`
- `URigHierarchy GetHierarchy()`
- `AActor GetHostingActor() const`  
  Find the actor the rig is bound to, if any
- `bool IsControlSelected(FName InControlName) const`
- `RequestConstruction()`  
  Requests to perform construction during the next execution
- `SelectControl(FName InControlName, bool bSelect = true, bool bSetupUndo = false)`  
  Selects or deselects an element in the hierarchy
@param InControlName The key of the element to select
@param bSelect If set to false the element will be deselected
@param bSetupUndo If set to true the stack will record the change for undo / redo
- `bool SupportsBackwardsSolve() const`  
  Contains a backwards solve event

---

