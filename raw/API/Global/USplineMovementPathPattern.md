### USplineMovementPathPattern


**属性**:

- `float32 LowerBound [How far into the spline the movement path actually begins.]`
- `FComponentReference SplineComponentRef [Optional property to specify the spline component that defines the path to follow. If blank, we'll use the first spline component we find in this actor.
This is only necessary to set if you have multiple spline components on the actor, or want to follow a spline on an external actor.]`
- `float32 UpperBound [How far into the spline the movement path ends. Must be greater than the lower bound.]`
- `bool bApplySplineScaling []`
- `bool bOffsetsModifyDuration [If true, the path duration will be shortened according to how much of the spline is not being followed.
If false (default), the path duration is unchanged, so the object will move slower when the usable spline range is reduced.]`

---

