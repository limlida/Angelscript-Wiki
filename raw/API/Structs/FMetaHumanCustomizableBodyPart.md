### FMetaHumanCustomizableBodyPart


**属性**:

- `FString ComponentName []`
- `TSubclassOf<UControlRig> ControlRigClass [Control rig to run on the body part. Evaluation happens after the base skeleton.]`
- `int ControlRigLODThreshold [* Max LOD level to evaluate the assigned control rig for the body part.
* For example if you have the threshold set to 2, the control rig will be evaluated for LOD 0, 1, and 2. Setting it to -1 will always evaluate it and disable LODing.]`
- `UPhysicsAsset PhysicsAsset [Physics asset used for rigid body simulation on the body part. Evaluation happens after the base skeleton.]`
- `int RigidBodyLODThreshold [* Max LOD level to simulate the rigid bodies of the assigned physics asset.
* For example if you have the threshold set to 2, simulation will be enabled for LOD 0, 1, and 2. Setting it to -1 will make it simulate always and disable LODing.]`


**方法**:

- `FMetaHumanCustomizableBodyPart& opAssign(FMetaHumanCustomizableBodyPart Other)`

---

