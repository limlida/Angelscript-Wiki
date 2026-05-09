### UPhysicsAssetEditorOptions


**属性**:

- `float32 GravScale [Scale factor for the gravity used in the simulation]`
- `float32 GravityOverrideZ [Gravity override used in the simulation]`
- `float32 HandleAngularDamping [Angular damping of mouse spring forces]`
- `float32 HandleAngularStiffness [Angular stiffness of mouse spring forces]`
- `float32 HandleLinearDamping [Linear damping of mouse spring forces]`
- `float32 HandleLinearStiffness [Linear stiffness of mouse spring forces]`
- `float32 InteractionDistance [Raycast distance when poking or grabbing]`
- `float32 InterpolationSpeed [How quickly we interpolate the physics target transform for mouse spring forces]`
- `int MaxFPS [Max FPS for simulation in PhysicsAssetEditor. This is helpful for targeting the same FPS as your game. -1 means disabled]`
- `float32 PhysicsBlend [Lets you manually control the physics/animation]`
- `EPhysicsTransformUpdateMode PhysicsUpdateMode [Determines whether simulation of root body updates component transform]`
- `float32 PokeBlendTime [Time taken to blend from physics to animation.]`
- `float32 PokePauseTime [Time between poking ragdoll and starting to blend back.]`
- `float32 PokeStrength [Strength of the impulse used when poking with left mouse button]`
- `bool bResetClothWhenSimulating [When set, cloth will reset each time simulation is toggled]`
- `bool bUpdateJointsFromAnimation [Lets you manually control the physics/animation]`
- `bool bUseGravityOverride [Toggle gravity override vs gravity scale]`

---

