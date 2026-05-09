### FInitialBodyModifier


Structure that determines a Body Modifier used during initialization of the physics control actor

**属性**:

- `TWeakObjectPtr<AActor> Actor [The owner of the mesh that that we will modify]`
- `FPhysicsControlModifierData BodyModifierData [How the body should move etc]`
- `FName BoneName [If the mesh component is skeletal, then the name of the skeletal mesh bone to modify]`
- `FRotator KinematicTargetOrientation [The target orientation when kinematic. Note that this is applied on top of any animation
target if bUseSkeletalAnimation is set.]`
- `FVector KinematicTargetPosition [The target position when kinematic. Note that this is applied on top of any animation
target if bUseSkeletalAnimation is set.]`
- `FName MeshComponentName [The mesh that will be modify. If this is blank but there is an actor, then we'll attempt to
use the root component.]`


**方法**:

- `FInitialBodyModifier& opAssign(FInitialBodyModifier Other)`

---

