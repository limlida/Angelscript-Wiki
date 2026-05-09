### FLayeredMoveGroup


A collection of layered moves affecting a movable actor

**属性**:

- `float32 ResidualClamping [Clamps an actors velocity to this value when a layered move ends. This expects Value >= 0.
Note: This is set automatically when a layered move has ended based off of end velocity settings - it is not meant to be set by the user see @FLayeredMoveFinishVelocitySettings]`
- `FVector ResidualVelocity [If bApplyResidualVelocity is true this actors velocity will be set to this.
Note: This is set automatically when a layered move has ended based off of end velocity settings - it is not meant to be set by the user see @FLayeredMoveFinishVelocitySettings]`
- `bool bApplyResidualVelocity [If true ResidualVelocity will be the next velocity used for this actor
Note: This is set automatically when a layered move has ended based off of end velocity settings - it is not meant to be set by the user see @FLayeredMoveFinishVelocitySettings]`


**方法**:

- `FLayeredMoveGroup& opAssign(FLayeredMoveGroup Other)`

---

