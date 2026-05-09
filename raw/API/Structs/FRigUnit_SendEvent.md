### FRigUnit_SendEvent


SendEvent is used to notify the engine / editor of a change that happend within the Control Rig.

**属性**:

- `ERigEvent Event [The event to send to the engine]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Item [The item to send the event for]`
- `float32 OffsetInSeconds [The time offset to use for the send event]`
- `bool bEnable [The event will be sent if this is checked]`
- `bool bOnlyDuringInteraction [The event will be sent if this only during an interaction]`


**方法**:

- `FRigUnit_SendEvent& opAssign(FRigUnit_SendEvent Other)`

---

