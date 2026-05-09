### FRelativeBaseInfo


Data about the object a Mover actor is basing its movement on, such as when standing on a moving platform

**属性**:

- `FName BoneName [Bone name on component, for skeletal meshes. NAME_None if not a skeletal mesh or if bone is invalid.]`
- `FVector ContactLocalPosition [Last captured location of the tethering point where the Mover actor is "attached", relative to the base.]`
- `FVector Location [Last captured worldspace location of MovementBase / Bone]`
- `TWeakObjectPtr<UPrimitiveComponent> MovementBase [Component we are moving relative to]`
- `FQuat Rotation [Last captured worldspace orientation of MovementBase / Bone]`


**方法**:

- `FRelativeBaseInfo& opAssign(FRelativeBaseInfo Other)`

---

