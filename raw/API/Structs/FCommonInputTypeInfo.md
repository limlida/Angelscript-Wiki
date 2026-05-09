### FCommonInputTypeInfo


**属性**:

- `float32 HoldRollbackTime [Time (in seconds) for hold progress to go from 1.0 (completed) to 0.0.
If the hold interaction was interrupted, then hold progress starts to roll back decreasing its value.
Set to 0.0 to disable the rollback functionality.]`
- `float32 HoldTime [The hold time in seconds]`
- `FKey Key [Key this action is bound to]`
- `FSlateBrush OverrideBrush [Override the brush specified by the Key Display Data]`
- `EInputActionState OverrrideState [EInputActionState::Enabled means that the state isn't overriden and the games dynamic control will work]`
- `bool bActionRequiresHold [Enables hold time if true]`


**方法**:

- `FCommonInputTypeInfo& opAssign(FCommonInputTypeInfo Other)`

---

