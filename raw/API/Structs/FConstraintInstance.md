### FConstraintInstance


Container for a physics representation of an object.

**属性**:

- `FRotator AngularRotationOffset [Specifies the angular offset between the two frames of reference. By default limit goes from (-Angle, +Angle)
This allows you to bias the limit for swing1 swing2 and twist.]`
- `FName ConstraintBone1 [Name of first bone (body) that this constraint is connecting.
This will be the 'child' bone in a PhysicsAsset.]`
- `FName ConstraintBone2 [Name of second bone (body) that this constraint is connecting.
This will be the 'parent' bone in a PhysicsAset.]`
- `FVector Pos1 [Location of constraint in Body1 reference frame (usually the "child" body for skeletal meshes).]`
- `FVector Pos2 [Location of constraint in Body2 reference frame (usually the "parent" body for skeletal meshes).]`
- `FVector PriAxis1 [Primary (twist) axis in Body1 reference frame.]`
- `FVector PriAxis2 [Primary (twist) axis in Body2 reference frame.]`
- `FConstraintProfileProperties ProfileInstance [Constraint Data (properties easily swapped at runtime based on different constraint profiles)]`
- `FVector SecAxis1 [Secondary axis in Body1 reference frame. Orthogonal to PriAxis1.]`
- `FVector SecAxis2 [Secondary axis in Body2 reference frame. Orthogonal to PriAxis2.]`
- `bool bScaleLinearLimits [If true, linear limits scale using the absolute min of the 3d scale of the owning component]`


**方法**:

- `FConstraintInstance& opAssign(FConstraintInstance Other)`

---

