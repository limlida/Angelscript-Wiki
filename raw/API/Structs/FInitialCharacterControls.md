### FInitialCharacterControls


Structure that holds the data necessary to set up a default set of limb controls for a character

**属性**:

- `FPhysicsControlModifierData BodyModifierData`
- `TWeakObjectPtr<AActor> CharacterActor [The owner of the character skeletal mesh]`
- `TArray<FPhysicsControlLimbSetupData> LimbSetupData`
- `FPhysicsControlData ParentSpaceControlData`
- `FName SkeletalMeshComponentName [The skeletal mesh that will have controls set up. If this is blank but there is an actor, then we'll attempt to
use the root component.]`
- `FPhysicsControlData WorldSpaceControlData`


**方法**:

- `FInitialCharacterControls& opAssign(FInitialCharacterControls Other)`

---

