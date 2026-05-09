### UParticleModuleOrbit


**属性**:

- `EOrbitChainMode ChainMode [Orbit modules will chain together in the order they appear in the module stack.
The combination of a module with the one prior to it is defined by using one
of the following enumerations:
        EOChainMode_Add         Add the values to the previous results
        EOChainMode_Scale       Multiply the values by the previous results
        EOChainMode_Link        'Break' the chain and apply the values from the previous results]`
- `FRawDistributionVector OffsetAmount [The amount to offset the sprite from the particle position.]`
- `FOrbitOptions OffsetOptions [The options associated with the OffsetAmount look-up.]`
- `FRawDistributionVector RotationAmount [The amount (in 'turns') to rotate the offset about the particle position.
        0.0 = no rotation
        0.5     = 180 degree rotation
        1.0 = 360 degree rotation]`
- `FOrbitOptions RotationOptions [The options associated with the RotationAmount look-up.]`
- `FRawDistributionVector RotationRateAmount [The rate (in 'turns') at which to rotate the offset about the particle positon.
        0.0 = no rotation
        0.5     = 180 degree rotation
        1.0 = 360 degree rotation]`
- `FOrbitOptions RotationRateOptions [The options associated with the RotationRateAmount look-up.]`

---

