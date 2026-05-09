### UChaosClothConfig


Holds initial, asset level config for clothing actors. // Hiding categories that will be used in the future

**属性**:

- `float32 AngularVelocityScale [The amount of angular velocities sent to the local cloth space from the reference bone
(the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).]`
- `FChaosClothWeightedValue AnimDriveDamping [The damping amount of the anim drive.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Anim Drive Damping" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored
in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is sufficient to work on this constraint.]`
- `FChaosClothWeightedValue AnimDriveStiffness [The strength of the constraint driving the cloth towards the animated goal mesh.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Anim Drive Stiffness" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored
in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to enable this constraint.]`
- `FChaosClothWeightedValue AreaStiffnessWeighted [The stiffness of the surface area preservation constraints. Increase the iteration count for stiffer materials.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Bend Stiffness" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to enable this constraint.]`
- `FChaosClothWeightedValue BendingStiffnessWeighted [The Stiffness of cross segments and bending elements constraints. Increase the iteration count for stiffer materials.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Bend Stiffness" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to enable this constraint.]`
- `float32 BucklingRatio [Once the element has bent such that it's folded more than this ratio from its rest angle ("buckled"), switch to using Buckling Stiffness instead of Bending Stiffness.
When Buckling Ratio = 0, the Buckling Stiffness will never be used. When BucklingRatio = 1, the Buckling Stiffness will be used as soon as its bent past its rest configuration.]`
- `FChaosClothWeightedValue BucklingStiffnessWeighted [Bending will use this stiffness instead of Bending Stiffness once the cloth has buckled, i.e., bent beyond a certain angle.
Typically, Buckling Stiffness is set to be less than Bending Stiffness. Buckling Ratio determines the switch point between using Bending Stiffness and Buckling Stiffness.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Buckling Stiffness" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to enable this constraint.]`
- `float32 CollisionThickness [The added thickness of collision shapes.]`
- `float32 DampingCoefficient [The amount of global damping applied to the cloth velocities, also known as point damping.
Point damping improves simulation stability, but can also cause an overall slow-down effect and therefore is best left to very small percentage amounts.]`
- `float32 Density [The value used when Mass Mode is set to Density.
Melton Wool: 0.7
Heavy leather: 0.6
Polyurethane: 0.5
Denim: 0.4
Light leather: 0.3
Cotton: 0.2
Silk: 0.1]`
- `FChaosClothWeightedValue Drag [The aerodynamic coefficient of drag applying on each particle.
When "Outer Drag" is enabled, this acts as the "Inner Drag", i.e., drag applied when the air velocity is
moving in the mesh normal direction.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Drag" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored
in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to set the aerodynamic drag.]`
- `FChaosClothWeightedValue EdgeStiffnessWeighted [The Stiffness of segments constraints. Increase the iteration count for stiffer materials.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Edge Stiffness" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to enable this constraint.]`
- `float32 FictitiousAngularScale [The portion of the angular velocity that is used to calculate the strength of all fictitious forces (e.g. centrifugal force).
This parameter is only having an effect on the portion of the reference bone's angular velocity that has been removed from the
simulation via the Angular Velocity Scale parameter. This means it has no effect when AngularVelocityScale is set to 1 in which
case the cloth is simulated with full world space angular velocities and subjected to the true physical world inertial forces.
Values range from 0 to 2, with 0 showing no centrifugal effect, 1 full centrifugal effect, and 2 an overdriven centrifugal effect.]`
- `FChaosClothWeightedValue FlatnessRatio [Calculate rest angles as a ratio between completely flat and whatever is the 3D rest angle.
When FlatnessRatio = 0, the rest angle will match the input mesh..
When FlatnessRatio = 1, the rest angle will be 0 (completely flat).
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Flatness Ratio" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to enable this constraint.]`
- `float32 FrictionCoefficient [Friction coefficient for cloth - collider interaction.]`
- `FVector Gravity [The gravitational acceleration vector [cm/s^2]]`
- `float32 GravityScale [Scale factor applied to the world gravity and also to the clothing simulation interactor gravity. Does not affect the gravity if set using the override below.]`
- `FChaosClothWeightedValue Lift [The aerodynamic coefficient of lift applying on each particle.
When "Outer Lift" is enabled, this acts as the "Inner lift", i.e., lift applied when the air velocity is
moving in the mesh normal direction.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Lift" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored
in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to set the aerodynamic lift.]`
- `FVector LinearVelocityScale [The amount of linear velocities sent to the local cloth space from the reference bone
(the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).]`
- `float32 LocalDampingCoefficient [The amount of local damping applied to the cloth velocities.
This type of damping only damps individual deviations of the particles velocities from the global motion.
It makes the cloth deformations more cohesive and reduces jitter without affecting the overall movement.
It can also produce synchronization artifacts where part of the cloth mesh are disconnected (which might well be desirable, or not), and is more expensive than global damping.]`
- `EClothMassMode MassMode [How cloth particle mass is determined
-    Uniform Mass: Every particle's mass will be set to the value specified in the UniformMass setting. Mostly to avoid as it can cause some serious issues with irregular tessellations.
-    Total Mass: The total mass is distributed equally over all the particles. Useful when referencing a specific garment size and feel.
-    Density: A constant mass density is used. Density is usually the preferred way of setting mass since it allows matching real life materials' density values.]`
- `float32 MaxAngularAcceleration [The maximum amount of angular acceleration sent to the local cloth space from the reference bone
(the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).]`
- `float32 MaxAngularVelocity [The maximum amount of angular velocity sent to the local cloth space from the reference bone
(the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).]`
- `FVector3f MaxLinearAcceleration [The maximum amount of linear acceleration sent to the local cloth space from the reference bone
(the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).]`
- `FVector3f MaxLinearVelocity [The maximum amount of linear velocity sent to the local cloth space from the reference bone
(the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).]`
- `FChaosClothWeightedValue OuterDrag [The aerodynamic coefficient of drag applying on each particle when the air velocity is moving
against the mesh normal direction.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Outer Drag" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored
in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to set the aerodynamic drag.]`
- `FChaosClothWeightedValue OuterLift [The aerodynamic coefficient of lift applying on each particle when the air velocity is moving
against the mesh normal direction.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Outer Lift" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored
in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to set the aerodynamic lift.]`
- `FChaosClothWeightedValue Pressure [Pressure force strength applied in the normal direction(use negative value to push toward backface)
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Pressure" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored
in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to set the pressure.]`
- `float32 SelfCollisionFriction [Friction coefficient for cloth - cloth interaction.]`
- `float32 SelfCollisionSphereRadius [The radius of the spheres used in self collision centered at each vertex.]`
- `float32 SelfCollisionSphereRadiusCullMultiplier [Multiplier for culling the self collision spheres. Spheres are seeded on every vertex,
and culled based on SelfCollisionSphereRadius * SelfCollisionSphereRadiusCullMultiplier.]`
- `float32 SelfCollisionSphereStiffness [The stiffness of the springs used to control self collision.]`
- `float32 SelfCollisionThickness [The radius of the spheres used in self collision. (i.e., offset per side. total thickness of cloth is 2x this value)]`
- `FChaosClothWeightedValue TetherScale [The limit scale of the long range attachment constraints (aka tether limit).
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Tether Scale" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored
in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to set the tethers' scale.]`
- `FChaosClothWeightedValue TetherStiffness [The tethers' stiffness of the long range attachment constraints.
The long range attachment connects each of the cloth particles to its closest fixed point with a spring constraint.
This can be used to compensate for a lack of stretch resistance when the iterations count is kept low for performance reasons.
Can lead to an unnatural pull string puppet like behavior.
If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Tether Stiffness" is added to the cloth,
then both the Low and High values will be used in conjunction with the per particle Weight stored
in the Weight Map to interpolate the final value from them.
Otherwise only the Low value is meaningful and sufficient to enable this constraint.
Use 0, 0 to disable.]`
- `float32 TotalMass [The value used when Mass Mode is set to TotalMass.]`
- `float32 UniformMass [The value used when the Mass Mode is set to Uniform Mass.]`
- `EChaosSoftsSimulationSpace VelocityScaleSpace [All vector properties in this section (e.g., Linear Velocity Scale, Max Linear Acceleration)
will be evaluated in this space.]`
- `bool bEnableAngularAccelerationClamping [Enable angular acceleration clamping.]`
- `bool bEnableAngularVelocityClamping [Enable angular velocity clamping.]`
- `bool bEnableLinearAccelerationClamping [Enable linear acceleration clamping.]`
- `bool bEnableLinearVelocityClamping [Enable linear velocity clamping.]`
- `bool bEnableOuterDrag []`
- `bool bEnableOuterLift []`
- `bool bUseBendingElements [Enable the more accurate bending element constraints instead of the faster cross-edge spring constraints used for controlling bending stiffness.]`
- `bool bUseCCD [Use continuous collision detection (CCD) to prevent any missed collisions between fast moving particles and colliders.
This has a negative effect on performance compared to when resolving collision without using CCD.]`
- `bool bUseGeodesicDistance [Use geodesic instead of euclidean distance calculations for the Long Range Attachment constraint,
which is slower at setup but more accurate at establishing the correct position and length of the tethers,
and therefore is less prone to artifacts during the simulation.]`
- `bool bUseGravityOverride [Use the config gravity value instead of world gravity.]`
- `bool bUseLegacyBackstop [This parameter is automatically set by the migration code. It can be overridden here to use the old way of authoring the backstop distances.
The legacy backstop requires the sphere radius to be included within the painted distance mask, making it difficult to author correctly. In this case the backstop distance is the distance from the animated mesh to the center of the corresponding backstop collision sphere.
The non legacy backstop automatically adds the matching sphere's radius to the distance calculations at runtime to make for a simpler authoring of the backstop distances. In this case the backstop distance is the distance from the animated mesh to the surface of the backstop collision sphere.
In both cases, a positive backstop distance goes against the corresponding animated mesh's normal, and a negative backstop distance goes along the corresponding animated mesh's normal.]`
- `bool bUsePointBasedWindModel [This parameter is automatically set by the migration code. It can be overridden here to use the old deprecated "Legacy" wind model in order to preserve behavior with previous versions of the engine.
The old wind model is not an accurate aerodynamic model and as such should be avoided. Being point based, it doesn't take into account the surface area that gets hit by the wind.
Using this model makes the simulation slightly slower, disables the aerodynamically accurate wind model, and prevents the cloth to interact with the surrounding environment (air, water, ...etc.) even when there is no wind.]`
- `bool bUseSelfCollisionSpheres [Enable sphere-based self collision repulsion forces.]`
- `bool bUseSelfCollisions [Enable self collision repulsion forces (point-face).]`
- `bool bUseSelfIntersections [Enable self intersection resolution. This will try to fix any cloth intersections that are not handled by collision repulsions.]`

---

