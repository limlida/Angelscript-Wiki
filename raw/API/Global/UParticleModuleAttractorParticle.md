### UParticleModuleAttractorParticle


**属性**:

- `FName EmitterName [The source emitter for attractors]`
- `FRawDistributionFloat Range [The radial range of the attraction around the source particle.
Particle-life relative.]`
- `EAttractorParticleSelectionMethod SelectionMethod [The method to use when selecting an attractor target particle from the emitter.
One of the following:
Random          - Randomly select a particle from the source emitter.
Sequential  - Select a particle using a sequential order.]`
- `FRawDistributionFloat Strength [The strength of the attraction (negative values repel).
Particle-life relative if StrengthByDistance is false.]`
- `bool bAffectBaseVelocity [If true, the velocity adjustment will be applied to the base velocity.]`
- `bool bInheritSourceVel [Whether the particle should inherit the source veloctiy if it expires.]`
- `bool bRenewSource [Whether the particle should grab a new particle if it's source expires.]`
- `bool bStrengthByDistance [The strength curve is a function of distance or of time.]`

---

