### UParticleModuleTypeDataRibbon


**属性**:

- `float32 DistanceTessellationStepSize [The distance step size for tessellation.
# Tessellation Points = TruncToInt((Distance Between Spawned Particles) / DistanceTessellationStepSize))]`
- `int MaxParticleInTrailCount [Max particles per trail]`
- `int MaxTrailCount [The number of live trails]`
- `ETrailsRenderAxisOption RenderAxis [The 'render' axis for the trail (what axis the trail is stretched out on)
        Trails_CameraUp - Traditional camera-facing trail.
        Trails_SourceUp - Use the up axis of the source for each spawned particle.
        Trails_WorldUp  - Use the world up axis.]`
- `int SheetsPerTrail [The number of sheets to render for the trail.]`
- `float32 TangentSpawningScalar [The tangent scalar for spawning.
Angles between tangent A and B are mapped to [0.0f .. 1.0f]
This is then multiplied by TangentTessellationScalar to give the number of particles to spawn]`
- `float32 TangentTessellationScalar [The tangent scalar for tessellation.
Angles between tangent A and B are mapped to [0.0f .. 1.0f]
This is then multiplied by TangentTessellationScalar to give the number of points to tessellate]`
- `float32 TilingDistance [The (estimated) covered distance to tile the 2nd UV set at.
If 0.0, a second UV set will not be passed in.]`
- `bool bClipSourceSegement [If true, do not join the trail to the source position]`
- `bool bDeadTrailsOnDeactivate [If true, when the system is deactivated, mark trails as dead.
This means they will still render, but will not have more particles
added to them, even if the system re-activates...]`
- `bool bDeadTrailsOnSourceLoss [If true, when the source of a trail is 'lost' (ie, the source particle
dies), mark the current trail as dead.]`
- `bool bEnablePreviousTangentRecalculation [If true, recalculate the previous tangent when a new particle is spawned]`
- `bool bEnableTangentDiffInterpScale [If this flag is enabled, the system will scale the number of interpolated vertices
based on the difference in the tangents of neighboring particles.
Each pair of neighboring particles will compute the following CheckTangent value:
        CheckTangent = ((ParticleA Tangent DOT ParticleB Tangent) - 1.0f) * 0.5f
If CheckTangent is LESS THAN 0.5, then the DistanceTessellationStepSize will be
scaled based on the result. This will map so that from parallel to orthogonal
(0..90 degrees) will scale from [0..1]. Anything greater than 90 degrees will clamp
at a scale of 1.]`
- `bool bRenderGeometry [If true, render the trail geometry (this should typically be on)]`
- `bool bRenderSpawnPoints [If true, render stars at each spawned particle point along the trail]`
- `bool bRenderTangents [If true, render a line showing the tangent at each spawned particle point along the trail]`
- `bool bRenderTessellation [If true, render the tessellated path between spawned particles]`
- `bool bSpawnInitialParticle [If true, ribbon will spawn a particle when it first starts moving]`
- `bool bTangentRecalculationEveryFrame [If true, recalculate tangents every frame to allow velocity/acceleration to be applied]`

---

