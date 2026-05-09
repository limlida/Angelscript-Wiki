### FConstraintProfileProperties


Container for properties of a physics constraint that can be easily swapped at runtime. This is useful for switching different setups when going from ragdoll to standup for example

**属性**:

- `float32 AngularBreakThreshold [Torque needed to break the joint.]`
- `FAngularDriveConstraint AngularDrive []`
- `float32 AngularPlasticityThreshold [[Chaos Only] Degree threshold from target angle needed to reset the target angle.]`
- `FConeConstraint ConeLimit []`
- `float32 ContactTransferScale [[Chaos Only] Colliison transfer on parent from the joints child. Range is 0.0-MAX]`
- `float32 LinearBreakThreshold [Force needed to break the distance constraint.]`
- `FLinearDriveConstraint LinearDrive []`
- `FLinearConstraint LinearLimit []`
- `float32 LinearPlasticityThreshold [[Chaos Only] Percent threshold from center of mass distance needed to reset the linear drive position target. This value can be greater than 1.]`
- `EConstraintPlasticityType LinearPlasticityType [Whether linear plasticity has a operation mode [free]]`
- `float32 ProjectionAngularAlpha [How much semi-physical angular projection correction to apply [0-1]. Only used if bEnableProjection is true and if hard limits are used.]`
- `float32 ProjectionAngularTolerance [If the joint error is above this distance after the solve phase, the child body will be teleported to fix the error. Only used if bEnableProjection is true.]`
- `float32 ProjectionLinearAlpha [How much semi-physical linear projection correction to apply [0-1]. Only used if bEnableProjection is true and if hard limits are used.]`
- `float32 ProjectionLinearTolerance [If the joint error is above this distance after the solve phase, the child body will be teleported to fix the error. Only used if bEnableProjection is true.]`
- `float32 ShockPropagationAlpha [How much shock propagation to apply [0-1]. Shock propagation increases the mass of the parent body for the last iteration of the
position and velocity solve phases. This can help stiffen up joint chains, but is also prone to introducing energy down the chain
especially at high alpha. Only used in bEnableShockPropagation is true.]`
- `FTwistConstraint TwistLimit []`
- `bool bAngularBreakable [Whether it is possible to break the joint with angular force.]`
- `bool bAngularPlasticity [Whether it is possible to reset target rotations from the angular displacement.]`
- `bool bDisableCollision [Disable collision between bodies joined by this constraint.]`
- `bool bEnableMassConditioning [Whether mass conditioning is enabled for this joint. Mass conditioning applies a non-physical scale to the mass and inertia of the two
bodies that only affects this joint, so that the mass and inertia ratios are smaller. This helps stabilize joints where the bodies
are very different sizes, and especially when the parent body is heavier than the child. However, it can lead to unrealistic
behaviour, especially when collisions are involved.]`
- `bool bEnableProjection [Projection is a post-solve position and angular fixup consisting of two correction procedures. First, if the constraint limits are exceeded
by more that the Linear or Angular Tolerance, the bodies are teleported to eliminate the error. Second, if the constraint limits are exceeded
by less than the tolerance, a semi-physical correction is applied,  with the parent body in the constraint is treated as having infinite mass.
The teleport tolerance are controlled by ProjectionLinearTolerance and ProjectionAngularTolerance. The semi-physical correction is controlled
by ProjectionLinearAlpha and ProjectionAnguilarAlpha. You may have one, none, or both systems enabled at the same time.

Projection only works well if the chain is not interacting with other objects (e.g., through collisions) because the projection of the bodies in
the chain will cause other constraints to be violated. Likewise, if a body is influenced by multiple constraints, then enabling projection on more
than one constraint may lead to unexpected results - the  "last" constraint would win but the order in which constraints are solved cannot be directly controlled.

Note that the semi-physical projection (ProjectionLinearAlpha and ProjectionAngularAlpha) is only applied to hard-limit constraints and not those with
soft limits because the soft limit is the point at which the soft-constraint (spring) kicks in, and not really a limit on how far the joint can be separated.]`
- `bool bEnableShockPropagation [Shock propagation increases the mass of the parent body for the last iteration of the position and velocity solve phases.
This can help stiffen up joint chains, but is also prone to introducing energy down the chain especially at high alpha.
It also does not work well if there are collisions on the bodies preventing the joints from correctly resolving - this
can lead to jitter, especially if collision shock propagation is also enabled.]`
- `bool bLinearBreakable [Whether it is possible to break the joint with linear force.]`
- `bool bLinearPlasticity [Whether it is possible to reset spring rest length from the linear deformation.]`
- `bool bParentDominates [When set, the parent body in a constraint will not be affected by the motion of the child]`
- `bool bUseLinearJointSolver [World Solver: Whether to use linear solver for this joint. Linear solver is faster and less accurate. The nonlinear solver is slower and more convergent.]`


**方法**:

- `FConstraintProfileProperties& opAssign(FConstraintProfileProperties Other)`

---

