### FRigControlSettings


**属性**:

- `ERigControlAnimationType AnimationType`
- `UEnum ControlEnum [If the control is integer it can use this enum to choose values]`
- `ERigControlType ControlType`
- `FRigControlElementCustomization Customization [The User interface customization used for a control
This will be used as the default content for the space picker and other widgets]`
- `FName DisplayName`
- `TArray<FRigElementKey> DrivenControls [The list of driven controls for this proxy control.]`
- `TArray<ERigControlTransformChannel> FilteredChannels [Filtered Visible Transform channels. If this is empty everything is visible]`
- `TArray<FRigControlLimitEnabled> LimitEnabled [True if the control has limits.]`
- `FRigControlValue MaximumValue [The maximum limit of the control's value]`
- `FRigControlValue MinimumValue [The minimum limit of the control's value]`
- `EEulerRotationOrder PreferredRotationOrder [The euler rotation order this control prefers for animation, if we aren't using default UE rotator]`
- `ERigControlAxis PrimaryAxis [the primary axis to use for float controls]`
- `FLinearColor ShapeColor`
- `FName ShapeName [This is optional UI setting - this doesn't mean this is always used, but it is optional for manipulation layer to use this]`
- `FTransform ShapeTransform [Transient storage for overrides when changing the shape transform]`
- `ERigControlVisibility ShapeVisibility [Defines how the shape visibility should be changed]`
- `bool bDrawLimits [True if the limits should be drawn in debug.
For this to be enabled you need to have at least one min and max limit turned on.]`
- `bool bGroupWithParentControl [If set to true the animation channel will be grouped with the parent control in sequencer]`
- `bool bIsTransientControl [If the control is transient and only visible in the control rig editor]`
- `bool bRestrictSpaceSwitching [Allow to space switch only to the available spaces]`
- `bool bShapeVisible [Set to true if the shape is currently visible in 3d]`
- `bool bUsePreferredRotationOrder [Whether to use a specified rotation order or just use the default FRotator order and conversion functions]`


**方法**:

- `FRigControlSettings& opAssign(FRigControlSettings Other)`

---

