### UParticleModuleRequired


**属性**:

- `float32 AlphaThreshold [Alpha channel values larger than the threshold are considered occupied and will be contained in the bounding geometry.
Raising this threshold slightly can reduce overdraw in particles using this animation asset.]`
- `ESubUVBoundingVertexCount BoundingMode [More bounding vertices results in reduced overdraw, but adds more triangle overhead.
The eight vertex mode is best used when the SubUV texture has a lot of space to cut out that is not captured by the four vertex version,
and when the particles using the texture will be few and large.]`
- `UTexture2D CutoutTexture [Texture to generate bounding geometry from.]`
- `float32 EmitterDelay [Indicates the time (in seconds) that this emitter should be delayed in the particle system.]`
- `float32 EmitterDelayLow [The low end of the emitter delay if using a range.]`
- `float32 EmitterDuration [How long, in seconds, the emitter will run before looping.]`
- `float32 EmitterDurationLow [The low end of the emitter duration if using a range.]`
- `int EmitterLoops [The number of times to loop the emitter.
    0 indicates loop continuously]`
- `EEmitterNormalsMode EmitterNormalsMode [Normal generation mode for this emitter LOD.]`
- `FVector EmitterOrigin []`
- `FRotator EmitterRotation []`
- `EParticleSubUVInterpMethod InterpolationMethod [The interpolation method to used for the SubUV image selection.
One of the following:
PSUVIM_None                     - Do not apply SubUV modules to this emitter.
PSUVIM_Linear           - Smoothly transition between sub-images in the given order,
                                          with no blending between the current and the next
PSUVIM_Linear_Blend     - Smoothly transition between sub-images in the given order,
                                          blending between the current and the next
PSUVIM_Random           - Pick the next image at random, with no blending between
                                          the current and the next
PSUVIM_Random_Blend     - Pick the next image at random, blending between the current
                                          and the next]`
- `FVector MacroUVPosition [Local space position that UVs generated with the ParticleMacroUV material node will be centered on.]`
- `float32 MacroUVRadius [World space radius that UVs generated with the ParticleMacroUV material node will tile based on.]`
- `UMaterialInterface Material [The material to utilize for the emitter at this LOD level.]`
- `int MaxDrawCount [The maximum number of particles to DRAW for this emitter.
If set to 0, it will use whatever number are present.]`
- `float32 MaxFacingCameraBlendDistance [The distance at which PSA_FacingCameraDistanceBlend    is fully PSA_FacingCameraPosition]`
- `float32 MinFacingCameraBlendDistance [The distance at which PSA_FacingCameraDistanceBlend    is fully PSA_Square]`
- `TArray<FName> NamedMaterialOverrides [Named material overrides for this emitter.
Overrides this emitter's material(s) with those in the correspondingly named slot(s) of the owning system.]`
- `FVector NormalsCylinderDirection [When EmitterNormalsMode is ENM_Cylindrical,
particle normals are created to face away from the cylinder going through NormalsSphereCenter in the direction NormalsCylinderDirection.
NormalsCylinderDirection is in local space.]`
- `FVector NormalsSphereCenter [When EmitterNormalsMode is ENM_Spherical, particle normals are created to face away from NormalsSphereCenter.
NormalsSphereCenter is in local space.]`
- `EOpacitySourceMode OpacitySourceMode []`
- `int RandomImageChanges [The number of times to change a random image over the life of the particle.]`
- `EParticleScreenAlignment ScreenAlignment [The screen alignment to utilize for the emitter at this LOD level.
One of the following:
PSA_FacingCameraPosition - Faces the camera position, but is not dependent on the camera rotation.
                                                        This method produces more stable particles under camera rotation.
PSA_Square                      - Uniform scale (via SizeX) facing the camera
PSA_Rectangle           - Non-uniform scale (via SizeX and SizeY) facing the camera
PSA_Velocity            - Orient the particle towards both the camera and the direction
                                          the particle is moving. Non-uniform scaling is allowed.
PSA_TypeSpecific        - Use the alignment method indicated in the type data module.
PSA_FacingCameraDistanceBlend - Blends between PSA_FacingCameraPosition and PSA_Square over specified distance.]`
- `EParticleSortMode SortMode [The sorting mode to use for this emitter.
PSORTMODE_None                          - No sorting required.
PSORTMODE_ViewProjDepth         - Sort by view projected depth of the particle.
PSORTMODE_DistanceToView        - Sort by distance of particle to view in world space.
PSORTMODE_Age_OldestFirst       - Sort by age, oldest drawn first.
PSORTMODE_Age_NewestFirst       - Sort by age, newest drawn first.]`
- `int SubImages_Horizontal [The number of sub-images horizontally in the texture]`
- `int SubImages_Vertical [The number of sub-images vertically in the texture]`
- `EParticleUVFlipMode UVFlippingMode [Controls UV Flipping for this emitter.]`
- `bool bDelayFirstLoopOnly [If true, the emitter will be delayed only on the first loop.]`
- `bool bDurationRecalcEachLoop [If true, recalculate the emitter duration on each loop.]`
- `bool bEmitterDelayUseRange [If true, select the emitter delay from the range
        [EmitterDelayLow..EmitterDelay]]`
- `bool bEmitterDurationUseRange [If true, select the emitter duration from the range
        [EmitterDurationLow..EmitterDuration]]`
- `bool bKillOnCompleted [If true, kill the emitter when it completes]`
- `bool bKillOnDeactivate [If true, kill the emitter when the particle system is deactivated]`
- `bool bOrbitModuleAffectsVelocityAlignment [Ensures that movement generated from the orbit module is applied to velocity-aligned particles]`
- `bool bOverrideSystemMacroUV [Override the system MacroUV settings]`
- `bool bOverrideUseVelocityForMotionBlur`
- `bool bRemoveHMDRoll [If true, removes the HMD view roll (e.g. in VR)]`
- `bool bScaleUV [Whether to scale the UV or not - ie, the model wasn't setup with sub uvs]`
- `bool bSupportLargeWorldCoordinates [If true, gpu simulation positions are offset to support double precision vectors. Cpu sims always support large world coordinates.]`
- `bool bUseLegacyEmitterTime [If true, the EmitterTime for the emitter will be calculated by
modulating the SecondsSinceCreation by the EmitterDuration. As
this can lead to issues w/ looping and variable duration, a new
approach has been implemented.
If false, this new approach is utilized, and the EmitterTime is
simply incremented by DeltaTime each tick. When the emitter
loops, it adjusts the EmitterTime by the current EmitterDuration
resulting in proper looping/delay behavior.]`
- `bool bUseLocalSpace [If true, update the emitter in local space]`
- `bool bUseMaxDrawCount [If true, use the MaxDrawCount to limit the number of particles rendered.
NOTE: This does not limit the number spawned/updated, only what is drawn.]`
- `bool bUseVelocityForMotionBlur [When supported by the vertex factory will use particle velocity for motion blur approximation.
This will be inaccurate in some cases, i.e. sprite rotation, but may provide a reasonable result vs having this disabled]`

---

