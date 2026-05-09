### FIKRigStretchLimbBoneSettings


**属性**:

- `FName Bone [The bone these settings are applied to.]`
- `FVector SquashDirection [The direction to push this bone when the limb is squashed. This is relative to the local bone axes.
NOTE: This direction is used by the "Squash Strength" feature of the stretch limb solver.
If no custom Squash direction is specified, the solver will push the bone in the direction away from its projection onto the pole vector.
If the bone is lying directly on the pole vector, the default squash direction is undefined and the bone may mot squash in a deterministic manner.]`


**方法**:

- `FIKRigStretchLimbBoneSettings& opAssign(FIKRigStretchLimbBoneSettings Other)`

---

