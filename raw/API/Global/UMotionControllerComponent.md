### UMotionControllerComponent


**属性**:

- `ETrackingStatus CurrentTrackingStatus [The tracking status for the device (e.g. full tracking, inertial tracking only, no tracking)]`
- `FName MotionSource [Defines which pose this component should receive from the OpenXR Runtime. Left/Right MotionSource is the same as LeftGrip/RightGrip. See OpenXR specification for details on poses.]`
- `int PlayerIndex [Which player index this motion controller should automatically follow]`
- `bool bDisableLowLatencyUpdate [If false, render transforms within the motion controller hierarchy will be updated a second time immediately before rendering.]`


**方法**:

- `bool GetAngularVelocity(FRotator& OutAngularVelocity) const`  
  If the motion tracking system provides angular velocity at this time OutAngularVelocity will be that velocity in deg/s in unreal world space and the function will return true. Note that it is not difficult to rotate a controller at more than 0.5 or 1 rotation per second briefly and some mathmatical operations(such as conversion to quaternion) lose rotations beyond 180 degrees or 360 degrees..  In some cases that is OK becuase the resulting final rotation is the same, but in some cases it would generate incorrect results.   If angular velocity is unavailable it will return false.
- `FVector GetHandJointPosition(int jointIndex, bool& bValueFound)`
- `bool GetLinearAcceleration(FVector& OutLinearAcceleration) const`  
  If the motion tracking system provides linear acceleration at this time the vector will be that acceleration in cm/(s^2) in unreal world space and the function will return true.  If acceleration is unavailable it will return false.
- `bool GetLinearVelocity(FVector& OutLinearVelocity) const`  
  If the motion tracking system provides linear velocity at this time the vector will be that velocity in cm/s in unreal world space and the function will return true.  If velocity is unavailable it will return false.
- `float32 GetParameterValue(FName InName, bool& bValueFound)`  
  Returns the value of a custom parameter on the current in use Motion Controller (see member InUseMotionController). Only valid for the duration of OnMotionControllerUpdated
- `bool IsTracked() const`  
  Whether or not this component had a valid tracked device this frame
- `OnMotionControllerUpdated()`  
  Blueprint Implementable function for responding to updated data from a motion controller (so we can use custom parameter values from it)
- `SetAssociatedPlayerIndex(int NewPlayer)`
- `SetTrackingMotionSource(FName NewSource)`

---

