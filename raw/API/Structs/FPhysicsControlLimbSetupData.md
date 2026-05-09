### FPhysicsControlLimbSetupData


Setup data that are used to create the representation of a single limb. A limb is an array of
contiguous bones (e.g. left arm, or the spine etc). We can define it has the set of bones that
are children of a start bone (plus the start bone itself), plus optionally the parent of that start
bone (this is useful when defining the spine, since you will want to include the pelvis, but you
don't to include all the children of the pelvis since that would include the legs), but excluding
any bones that are already part of another limb. This implies limbs should be constructed in order
from leaf to root (in practice, that normally means defining the spine after other limbs such as
the arms and legs).

**属性**:

- `FName LimbName [The name of the limb that this will be used to create]`
- `FName StartBone [* Normally the root-most bone of the limb (e.g. left clavicle when defining the left arm) - so the
* limb will contain children of this bone (plus this bone itself).]`
- `bool bCreateBodyModifiers [Whether to create body modifiers for this limb]`
- `bool bCreateParentSpaceControls [Whether to create parent-space controls for this limb]`
- `bool bCreateWorldSpaceControls [Whether to create-world space controls for this limb]`
- `bool bIncludeParentBone [* Whether or not to include the parent of the start bone. This is intended to be used for limbs like
* the spine, where you would set StartBone = spine_01 but also expect to include the pelvis (parent
* of spine_01) in the spine limb.]`


**方法**:

- `FPhysicsControlLimbSetupData& opAssign(FPhysicsControlLimbSetupData Other)`

---

