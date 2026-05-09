### UParticleModuleLocationEmitter


**属性**:

- `FName EmitterName [The name of the emitter to use that the source location for particle.]`
- `float32 InheritSourceRotationScale [Amount to scale the source rotation by when inheriting it.]`
- `bool InheritSourceVelocity [If true, the spawned particle should inherit the velocity of the source particle.]`
- `float32 InheritSourceVelocityScale [Amount to scale the source velocity by when inheriting it.]`
- `ELocationEmitterSelectionMethod SelectionMethod [The method to use when selecting a spawn target particle from the emitter.
Can be one of the following:
        ELESM_Random            Randomly select a particle from the source emitter.
        ELESM_Sequential        Step through each particle from the source emitter in order.]`
- `bool bInheritSourceRotation [If true, the spawned particle should inherit the rotation of the source particle.]`

---

