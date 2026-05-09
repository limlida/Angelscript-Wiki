### FApplyVelocityEffect


Apply Velocity: provides an impulse velocity to the actor after (optionally) forcing them into a particular movement mode
Note: this only applies the impulse for one tick!

**属性**:

- `FName ForceMovementMode [Optional movement mode name to force the actor into before applying the impulse velocity.]`
- `FVector VelocityToApply [Velocity to apply to the actor.]`
- `bool bAdditiveVelocity [If true VelocityToApply will be added to current velocity on this actor. If false velocity will be set directly to VelocityToApply]`


**方法**:

- `FApplyVelocityEffect& opAssign(FApplyVelocityEffect Other)`

---

