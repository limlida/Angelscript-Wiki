### UVRScoutingInteractor


Represents the interactor in the world

**属性**:

- `UStaticMeshComponent FlyingIndicatorComponent [Shown in Navigation mode]`
- `bool bReceivesEditorInput [If set to true, then this interactor will be able to recieve input delegate callbacks when in the editor. Defaults to true since we will always want this interactor to consume input]`


**方法**:

- `EGizmoHandleTypes GetGizmoMode() const`  
  Gets the gizmo mode for selected object
- `UInputComponent GetInputComponent() const`  
  Returns the current InputComponent. This will be NULL unless bReceivesEditorInput is set to true.
- `bool GetReceivesEditorInput() const`
- `SetGizmoMode(EGizmoHandleTypes InGizmoMode)`  
  Sets the gizmo mode for selected object
- `SetReceivesEditorInput(bool bInValue)`

---

