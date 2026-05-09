### FRigControl


**属性**:

- `UEnum ControlEnum [If the control is transient and only visible in the control rig editor]`
- `ERigControlType ControlType`
- `FName DisplayName`
- `FLinearColor GizmoColor`
- `FName GizmoName [This is optional UI setting - this doesn't mean this is always used, but it is optional for manipulation layer to use this]`
- `FTransform GizmoTransform`
- `int Index []`
- `FRigControlValue InitialValue [The value that a control is reset to during begin play or when the
control rig is instantiated.]`
- `FRigControlValue MaximumValue [The maximum limit of the control's value]`
- `FRigControlValue MinimumValue [The minimum limit of the control's value]`
- `FName Name`
- `FTransform OffsetTransform [Used to offset a control in global space. This can be useful
to offset a float control by rotating it or translating it.]`
- `int ParentIndex []`
- `FName ParentName []`
- `ERigControlAxis PrimaryAxis [the primary axis to use for float controls]`
- `int SpaceIndex []`
- `FName SpaceName []`
- `FRigControlValue Value [The current value of the control.]`
- `bool bAnimatable [If the control is animatable in sequencer]`
- `bool bDrawLimits [True if the limits should be drawn in debug.]`
- `bool bGizmoEnabled [Set to true if the gizmo is enabled in 3d]`
- `bool bGizmoVisible [Set to true if the gizmo is currently visible in 3d]`
- `bool bIsTransientControl [If the control is transient and only visible in the control rig editor]`
- `bool bLimitRotation [True if the control has to obey rotation limits.]`
- `bool bLimitScale [True if the control has to obey scale limits.]`
- `bool bLimitTranslation [True if the control has to obey translation limits.]`


**方法**:

- `FRigControl& opAssign(FRigControl Other)`

---

