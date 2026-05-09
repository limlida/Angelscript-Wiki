### UClothConfigNv


**属性**:

- `FVector AngularDrag [Drag applied to angular particle movement, higher values should limit material bending (per-axis)]`
- `FVector AngularInertiaScale [Scale for angular particle inertia, how much movement should translate to angular motion (per-axis)]`
- `float32 AnimDriveDamperStiffness [Default damper stiffness for anim drive if an anim drive is in use]`
- `float32 AnimDriveSpringStiffness [Default spring stiffness for anim drive if an anim drive is in use]`
- `FClothConstraintSetupNv BendConstraint [Constraint data for bend constraints]`
- `FVector CentrifugalInertiaScale [Scale for centrifugal particle inertia, how much movement should translate to angular motion (per-axis)]`
- `EClothingWindMethodNv ClothingWindMethod [How wind should be processed, Accurate uses drag and lift to make the cloth react differently, legacy applies similar forces to all clothing without drag and lift (similar to APEX)]`
- `float32 CollisionThickness ['Thickness' of the simulated cloth, used to adjust collisions]`
- `FVector Damping [Damping of particle motion per-axis]`
- `float32 Friction [Friction of the surface when colliding]`
- `FVector GravityOverride [Direct gravity override value]`
- `float32 GravityScale [Scale of gravity effect on particles]`
- `FClothConstraintSetupNv HorizontalConstraint [Constraint data for horizontal constraints]`
- `FVector LinearDrag [Drag applied to linear particle movement per-axis]`
- `FVector LinearInertiaScale [Scale for linear particle inertia, how much movement should translate to linear motion (per-axis)]`
- `float32 SelfCollisionCullScale [Scale to use for the radius of the culling checks for self collisions.
Any other self collision body within the radius of this check will be culled.
This helps performance with higher resolution meshes by reducing the number
of colliding bodies within the cloth. Reducing this will have a negative
effect on performance!]`
- `float32 SelfCollisionRadius [Size of self collision spheres centered on each vert]`
- `float32 SelfCollisionStiffness [Stiffness of the spring force that will resolve self collisions]`
- `FClothConstraintSetupNv ShearConstraint [Constraint data for shear constraints]`
- `float32 SolverFrequency [Frequency of the position solver, lower values will lead to stretchier, bouncier cloth]`
- `float32 StiffnessFrequency [Frequency for stiffness calculations, lower values will degrade stiffness of constraints]`
- `float32 TetherLimit [Scale for the limit of particle tethers (how far they can separate)]`
- `float32 TetherStiffness [Scale for stiffness of particle tethers between each other]`
- `FClothConstraintSetupNv VerticalConstraint [Constraint data for vertical constraints]`
- `float32 WindDragCoefficient [Drag coefficient for wind calculations, higher values mean wind has more lateral effect on cloth]`
- `float32 WindLiftCoefficient [Lift coefficient for wind calculations, higher values make cloth rise easier in wind]`
- `bool bUseGravityOverride [Use gravity override value vs gravity scale]`

---

