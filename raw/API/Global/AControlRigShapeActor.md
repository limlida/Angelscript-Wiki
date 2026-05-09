### AControlRigShapeActor


An actor used to represent a rig control

**属性**:

- `UStaticMeshComponent StaticMeshComponent [this is visual representation of the transform]`
- `bool bHovered [Whether this control is hovered]`
- `bool bSelected [Whether this control is selected]`


**方法**:

- `FTransform GetGlobalTransform() const`
- `bool IsEnabled() const`  
  Get whether the control is enabled/disabled
- `bool IsHovered() const`  
  Get whether the control is hovered
- `bool IsSelectedInEditor() const`  
  Get whether the control is selected/unselected
- `OnEnabledChanged(bool bIsEnabled)`  
  Event called when the enabled state of this control has changed
- `OnHoveredChanged(bool bIsSelected)`  
  Event called when the hovered state of this control has changed
- `OnManipulatingChanged(bool bIsManipulating)`  
  Event called when the manipulating state of this control has changed
- `OnSelectionChanged(bool bIsSelected)`  
  Event called when the selection state of this control has changed
- `OnTransformChanged(FTransform NewTransform)`  
  Event called when the transform of this control has changed
- `SetEnabled(bool bInEnabled)`  
  Set the control to be enabled/disabled
- `SetGlobalTransform(FTransform InTransform)`  
  this returns root component transform based on attach
when there is no attach, it is based on 0
- `SetHovered(bool bInHovered)`  
  Set the control to be hovered
- `SetSelectable(bool bInSelectable)`  
  Set the control to be selected/unselected
- `SetSelected(bool bInSelected)`  
  Set the control to be selected/unselected

---

