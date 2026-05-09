### UParticleModuleSpawnPerUnit


**属性**:

- `float32 MaxFrameDistance [The maximum valid movement for a single frame.
If 0.0, then the check is not performed.
Currently, if the distance moved between frames is greater than this
then NO particles will be spawned.
This is primiarily intended to cover cases where the PSystem is
attached to teleporting objects.]`
- `float32 MovementTolerance [The tolerance for moving vs. not moving w.r.t. the bIgnoreSpawnRateWhenMoving flag.
Ie, if (DistanceMoved < (UnitScalar x MovementTolerance)) then consider it not moving.]`
- `FRawDistributionFloat SpawnPerUnit [The amount to spawn per meter distribution.
The value is retrieved using the EmitterTime.]`
- `float32 UnitScalar [The scalar to apply to the distance traveled.
The value from SpawnPerUnit is divided by this value to give the actual
number of particles per unit.]`
- `bool bIgnoreMovementAlongX [If true, ignore the X-component of the movement]`
- `bool bIgnoreMovementAlongY [If true, ignore the Y-component of the movement]`
- `bool bIgnoreMovementAlongZ [If true, ignore the Z-component of the movement]`
- `bool bIgnoreSpawnRateWhenMoving [If true, process the default spawn rate when not moving...
When not moving, skip the default spawn rate.
If false, return the bProcessSpawnRate setting.]`

---

