### UPathedPhysicsMovementMode


Base for any movement mode that proceeds along a defined path within a specified amount of time
Only functional when used in concert with a PathedPhysicsMoverComponent and MoverPathedPhysicsLiaisonComponent

**属性**:

- `UCurveFloat CustomEasingCurve [If using a custom ease, this is the curve that will be used. If blank, will fall back to standard linear interpolation.]`
- `EAlphaBlendOption Easing [The kind of easing to apply when traveling along the path]`
- `FConstraintProfileProperties JointConstraintProperties [Configuration of the joint constraint that (if enabled) pulls the updated component along the path
The default settings are for a very stiff joint that allows just a little bit of "play"]`
- `float32 OneWayTripDuration [Total duration in seconds of a one-way trip from start to end.]`
- `FColor PathDebugDrawColor [The color used when drawing the aggregate path]`
- `TArray<TObjectPtr<UPathedMovementPatternBase>> PathPatterns [The set of patterns to follow that combine to form the path the component will follow

NOTE: Order can matter here!! The patterns are evaluated each physics frame in order starting from the front.
              Each successive pattern is aware of the aggregate results from the previous patterns.
              In most cases, this doesn't matter, as the pattern calculates the target transform against the static path origin point.
              However, some patterns necessarily determine their target based on the calculated target to that point
              For example, the LookAtRotationPattern calculates the look-at rotation target based on the target location]`
- `TOptional<EPathedPhysicsPlaybackBehavior> PlaybackBehaviorOverride [Optional playback behavior override for this mode specifically]`
- `bool bAllowPatternDebugDrawing [True to allow individual patterns to draw debug representations. Can be toggled individually on each pattern as well, this is a master switch for convenience.]`
- `bool bDebugDrawAggregatePath [True to draw debug lines for the aggregate path resulting from all the patterns in the path (i.e. the path that will actually be followed in game)]`
- `bool bUseJointConstraint [True to have the updated component be able to respond to physics inputs by being "pulled" along the path using a joint constraint
configured using JointConstraintProperties below.

If false, no joint will be used, and the affected component will be moved kinematically (i.e. independent of other physics effects and treated as though it has
infinite mass in the physics sim) and never deviate from the path.

Note that the movement is calculated on the physics thread either way, so it will correctly interact with other bodies in the sim.

Ex: Platform moving along a path in a straight line. If this is enabled, the platform could wobble, dip, shake, stall, etc. in response to physics forces/impulses
             (depending on the joint and physics properties of the platform). If this is disabled, the platform will rigidly move along the path and ignore all physics.]`


**方法**:

- `UPathedMovementPatternBase FindPattern(TSubclassOf<UPathedMovementPatternBase> PatternType) const`  
  Finds the first path pattern on this mode of the given type, if there is one
- `SetPathDuration_BeginPlayOnly(float32 NewDuration)`  
  Set the time it takes to travel one way along this path from start to end.
Only valid to call in BeginPlay or the Construction Script, ignored otherwise.
Once play has begun, the path duration can be modified indirectly via SetMovementTimeDilation on the owning PathedMoverComponent
- `SetUseJointConstraint(bool bUseJoint)`

---

