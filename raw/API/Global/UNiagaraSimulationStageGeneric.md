### UNiagaraSimulationStageGeneric


**属性**:

- `ENiagaraDirectDispatchElementType DirectDispatchElementType [Customizes what the element count means for a direct dispatch.]`
- `ENiagaraGpuDispatchType DirectDispatchType [Dimensions to use for dispatch.]`
- `FNiagaraParameterBindingWithValue ElementCountX [Integer binding to override the number of elements the stage will execute along X.
For example, if you want to iterate over a custom source such as triangles on a mesh you can
set an int to the triangle count in an emitter script and bind that as the element count.]`
- `FNiagaraParameterBindingWithValue ElementCountY [Integer binding to override the number of elements the stage will execute along Y.
For example, if you want to iterate over a 2D texture you can set an int to the texture height
in an emitter script and bind that as the element count.]`
- `FNiagaraParameterBindingWithValue ElementCountZ [Integer binding to override the number of elements the stage will execute along Z.
For example, if you want to iterate over a 3D texture you can set an int to the texture depth
in an emitter script and bind that as the element count.]`
- `ENiagaraSimStageExecuteBehavior ExecuteBehavior [Controls when the simulation stage should execute, only valid for data interface iteration stages]`
- `ENiagaraIterationSource IterationSource [Select what we should be iterating over, particles or data interfaces.
The source provides things such as element count (when not overriden) and stack context variables (i.e. attributes on grids)]`
- `FNiagaraParameterBindingWithValue NumIterations [Number of times (or iterations) the simulation stage will execute in a row.
For example, setting this to 10 will mean this simulation stage runs 10 times in a row before the next stage.
Can also be bound to a attribute so the simulation can dynamically decide]`
- `FNiagaraParameterBindingWithValue OverrideGpuDispatchNumThreadsX [Parameter binding / constant value for Num Threads X]`
- `FNiagaraParameterBindingWithValue OverrideGpuDispatchNumThreadsY [Parameter binding / constant value for Num Threads Y]`
- `FNiagaraParameterBindingWithValue OverrideGpuDispatchNumThreadsZ [Parameter binding / constant value for Num Threads Z]`
- `FIntPoint ParticleIterationStateRange [The inclusive range used to check particle state binding against when enabled.]`
- `bool bDisablePartialParticleUpdate [Disables the ability to read / write from the same particle buffer, i.e. only update position and no other attributes.
By default this should not be changed, but can be used to debug issues.]`
- `bool bGpuDispatchForceLinear [When enabled we force the dispatch to be linear (i.e. one dimension is used).
NOTE: Cannot be used with OverrideGpuDispatchType.]`
- `bool bOverrideGpuDispatchNumThreads [When enabled we use a custom number of threads for the dispatch.]`
- `bool bParticleIterationStateEnabled [When enabled we iterate over the subset of particles that satisfy the binding & range selected.
For example, if the binding was set to Particles.MyStateIndex and the range was 1-3 only the particles
with values of 1, 2 or 3 for Particles.MyStateIndex would run the script, all others would be ignored.]`

---

