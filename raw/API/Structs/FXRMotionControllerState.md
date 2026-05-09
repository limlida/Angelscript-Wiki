### FXRMotionControllerState


**属性**:

- `FGuid ApplicationInstanceID []`
- `FVector ControllerLocation []`
- `FQuat ControllerRotation []`
- `FName DeviceName []`
- `EControllerHand Hand []`
- `ETrackingStatus TrackingStatus [If a controller pose has been provided this frame the TrackingStatus will be Tracked.]`
- `EXRControllerPoseType XRControllerPoseType []`
- `EXRSpaceType XRSpaceType []`
- `bool bValid [The state is valid if a pose has ever been provided.]`


**方法**:

- `FXRMotionControllerState& opAssign(FXRMotionControllerState Other)`

---

