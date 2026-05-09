### FVersionedNiagaraEmitterData


Struct containing all of the data that can be different between different emitter versions.

**属性**:

- `ENiagaraEmitterDefaultSummaryState AddEmitterDefaultViewState [This determines how emitters will be added to a system by default. If summary view is setup, consider setting this to 'Summary'.]`
- `EParticleAllocationMode AllocationMode [The emitter needs to allocate memory for the particles each tick.
To prevent reallocations, the emitter should allocate as much memory as is needed for the max particle count.
This setting controls if the allocation size should be automatically determined or manually entered.]`
- `TArray<FString> AttributesToPreserve [An allow list of Particle attributes (e.g. "Particle.Position" or "Particle.Age") that will not be removed from the DataSet  even if they aren't read by the VM.
          Used in conjunction with UNiagaraSystem::bTrimAttributes]`
- `ENiagaraEmitterCalculateBoundMode CalculateBoundsMode [How should we calculate bounds for the emitter.
Note: If this is greyed out it means fixed bounds are enabled in the System Properties and these bounds are therefore ignored.]`
- `TArray<FNiagaraDataInterfaceEmitterBinding> EmitterDependencies [List of emitter dependencies to use when calculating the execution order for emitter particle scripts.
This is generally only required when you are using advanced features, such as reading / writing to a data interface in different emitters
and need to ensure the emitters can not run concurrently with one another, either on the CPU or the GPU.]`
- `FBox FixedBounds [The fixed bounding box value. CalculateBoundsMode is the condition whether the fixed bounds can be edited.
Note: If this is greyed out it means fixed bounds are enabled in the System Properties and these bounds are therefore ignored.]`
- `ENiagaraInterpolatedSpawnMode InterpolatedSpawnMode [This defines if newly spawned particles run only the spawn script on the first frame or both spawn and update with optional parameter interpolation.]`
- `int MaxGPUParticlesSpawnPerFrame [An override on the max number of GPU particles we expect to spawn in a single frame. A value of 0 means it'll use fx.MaxNiagaraGPUParticlesSpawnPerFrame.]`
- `FNiagaraPlatformSet Platforms []`
- `int PreAllocationCount [The emitter will allocate at least this many particles on it's first tick.
This can aid performance by avoiding many allocations as an emitter ramps up to it's max size.]`
- `int RandomSeed [An emitter-based seed for the deterministic random number generator.]`
- `FNiagaraEmitterScalabilityOverrides ScalabilityOverrides []`
- `TArray<FNiagaraSimStageExecutionLoopEditorData> SimStageExecutionLoopEditorData []`
- `ENiagaraSimTarget SimTarget`
- `bool bDeterminism [Toggles whether to globally make the random number generator be deterministic or non-deterministic. Any random calculation that is set to the emitter defaults will inherit this value. It is still possible to tweak individual random to be deterministic or not. In this case deterministic means that it will return the same results for the same configuration of the emitter as long as delta time is not variable. Any changes to the emitter's individual scripts will adjust the results.]`
- `bool bLocalSpace [Toggles whether or not the particles within this emitter are relative to the emitter origin or in global space.]`
- `bool bRequiresPersistentIDs [Creates a stable Identifier (Particles.ID) which does not vary from frame to frame. This comes at a small memory and performance cost. This allows external objects to track the same particle over multiple frames. Particle arrays are tightly packed and a particle's actual index in the array may change from frame to frame. This optionally lets you use a lookup table to track a particle by index in the lookup table.]`


**方法**:

- `FVersionedNiagaraEmitterData& opAssign(FVersionedNiagaraEmitterData Other)`

---

