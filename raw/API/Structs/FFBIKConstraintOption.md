### FFBIKConstraintOption


**属性**:

- `FFBIKBoneLimit AngularLimit [Angular delta limit of this joints local transform. [-Limit, Limit]]`
- `FVector AngularStiffness [Scale of [0, 1] and applied to angular motion strength, xyz is applied to twist, swing1, swing2]`
- `FRigElementKey Item [Bone Name]`
- `FVector LinearStiffness [Scale of [0, 1] and applied to linear motion strength - linear stiffness works on their local frame]`
- `FRotator OffsetRotation [this is offset rotation applied when constructing the local frame]`
- `FVector PoleVector [Pole Vector in their local space]`
- `EPoleVectorOption PoleVectorOption []`
- `bool bEnabled []`
- `bool bUseAngularLimit []`
- `bool bUsePoleVector []`
- `bool bUseStiffness []`


**方法**:

- `FFBIKConstraintOption& opAssign(FFBIKConstraintOption Other)`

---

