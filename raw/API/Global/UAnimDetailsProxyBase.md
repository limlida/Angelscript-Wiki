### UAnimDetailsProxyBase


Base class for anim details proxies.
Anim details proxies can handle a property bound in sequencer, and the related controls if the bound object uses a control rig.

This is a rewrite of what was previously UControlRigControlsProxy in ControlRigEditor/Private/EditMode/ControlRigControlsProxy.h.

**属性**:

- `FString DisplayName [An overrideable display name for the control]`
- `FRigUnit_HierarchyAddControl_ShapeSettings Shape [Overrideable shape settings for the control]`

---

