### FRigUnit_TwoBoneIKFK


**属性**:

- `FTransform EndEffector [# Transform to use as the end effector of the IK system]`
- `FName EndJoint`
- `FTransform EndJointFKTransform []`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `float32 IKBlend [Float : IKBlend(Default : 0.0)             # Blend between 0.0 (FK) and 1.0 (IK)solutions]`
- `FTransform MidJointFKTransform []`
- `FVector PoleTarget [# Transform to use as the pole target(specifies the plane of solution)]`
- `float32 Spin [Float: Spin(Default : 0.0) # Amount of twist to apply to the solution plane(Additive after application of Pole Target motion)]`
- `FName StartJoint`
- `FTransform StartJointFKTransform [Transform : Start Joint FK Transform         # Transform for the Start Joint when in FK mode
Transform: Mid Joint FK Transform           # Transform for the Mid Joint when in FK mode
Transform : End Joint FK Transform          # Transform for the End Joint when in FK mode]`


**方法**:

- `FRigUnit_TwoBoneIKFK& opAssign(FRigUnit_TwoBoneIKFK Other)`

---

