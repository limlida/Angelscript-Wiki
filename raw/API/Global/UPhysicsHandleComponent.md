### UPhysicsHandleComponent


Utility object for moving physics objects around.

**属性**:

- `float32 AngularDamping [Angular damping of the handle spring]`
- `float32 AngularStiffness [Angular stiffness of the handle spring]`
- `float32 InterpolationSpeed [How quickly we interpolate the physics target transform]`
- `float32 LinearDamping [Linear damping of the handle spring.]`
- `float32 LinearStiffness [Linear stiffness of the handle spring]`
- `bool bInterpolateTarget`
- `bool bSoftAngularConstraint`
- `bool bSoftLinearConstraint`


**方法**:

- `UPrimitiveComponent GetGrabbedComponent() const`  
  Returns the currently grabbed component, or null if nothing is grabbed.
- `GetTargetLocationAndRotation(FVector& TargetLocation, FRotator& TargetRotation) const`  
  Get the current location and rotation
- `GrabComponentAtLocation(UPrimitiveComponent Component, FName InBoneName, FVector GrabLocation)`  
  Grab the specified component at a given location. Does NOT constraint rotation which means the handle will pivot about GrabLocation.
- `GrabComponentAtLocationWithRotation(UPrimitiveComponent Component, FName InBoneName, FVector Location, FRotator Rotation)`  
  Grab the specified component at a given location and rotation. Constrains rotation.
- `ReleaseComponent()`  
  Release the currently held component
- `SetAngularDamping(float32 NewAngularDamping)`  
  Set angular damping
- `SetAngularStiffness(float32 NewAngularStiffness)`  
  Set angular stiffness
- `SetInterpolationSpeed(float32 NewInterpolationSpeed)`  
  Set interpolation speed
- `SetLinearDamping(float32 NewLinearDamping)`  
  Set linear damping
- `SetLinearStiffness(float32 NewLinearStiffness)`  
  Set linear stiffness
- `SetTargetLocation(FVector NewLocation)`  
  Set the target location
- `SetTargetLocationAndRotation(FVector NewLocation, FRotator NewRotation)`  
  Set target location and rotation
- `SetTargetRotation(FRotator NewRotation)`  
  Set the target rotation

---

