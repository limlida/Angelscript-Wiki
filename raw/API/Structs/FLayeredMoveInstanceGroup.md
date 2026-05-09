### FLayeredMoveInstanceGroup


The group of information about currently active and queued moves.
This replicates info for FLayeredMoveInstancedData only - it is expected that the corresponding ULayeredMoveLogic is
already registered with the mover component.

**属性**:

- `float32 ResidualClamping [Clamps an actors velocity to this value when a layered move ends. This expects Value >= 0.
Note: This is set automatically when a layered move has ended based off of end velocity settings - it is not meant to be set by the user see @FLayeredMoveFinishVelocitySettings]`
- `FVector ResidualVelocity [If bApplyResidualVelocity is true this actors velocity will be set to this.
Note: This is set automatically when a layered move has ended based off of end velocity settings - it is not meant to be set by the user see @FLayeredMoveFinishVelocitySettings]`
- `bool bApplyResidualVelocity [If true ResidualVelocity will be the next velocity used for this actor
Note: This is set automatically when a layered move has ended based off of end velocity settings - it is not meant to be set by the user see @FLayeredMoveFinishVelocitySettings]`


**方法**:

- `FLayeredMoveInstanceGroup& opAssign(FLayeredMoveInstanceGroup Other)`

---

