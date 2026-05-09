### APhysicsVolume


PhysicsVolume: A bounding volume which affects actor physics.
Each AActor is affected at any time by one PhysicsVolume.

**属性**:

- `float32 FluidFriction [This property controls the amount of friction applied by the volume as pawns using CharacterMovement move through it. The higher this value, the harder it will feel to move through]`
- `int Priority [Determines which PhysicsVolume takes precedence if they overlap (higher number = higher priority).]`
- `float32 TerminalVelocity [Terminal velocity of pawns using CharacterMovement when falling.]`
- `bool bPhysicsOnContact [By default, the origin of an AActor must be inside a PhysicsVolume for it to affect the actor. However if this flag is true, the other actor only has to touch the volume to be affected by it.]`
- `bool bWaterVolume [True if this volume contains a fluid like water]`

---

