### UParticleModuleTrailSource


**属性**:

- `EParticleSourceSelectionMethod SelectionMethod [Particle selection method, when using the SourceMethod of Particle.]`
- `ETrail2SourceMethod SourceMethod [The source method for the trail.]`
- `FName SourceName [The name of the source - either the emitter or Actor.]`
- `int SourceOffsetCount [SourceOffsetCount
The number of source offsets that can be expected to be found on the instance.
These must be named
        TrailSourceOffset#]`
- `TArray<FVector> SourceOffsetDefaults [Default offsets from the source(s).
If there are < SourceOffsetCount slots, the grabbing of values will simply wrap.]`
- `FRawDistributionFloat SourceStrength [The strength of the tangent from the source point for each Trail.]`
- `bool bInheritRotation [Interhit particle rotation - only valid for SourceMethod of PET2SRCM_Particle.]`
- `bool bLockSourceStength [Whether to lock the source to the life of the particle.]`

---

