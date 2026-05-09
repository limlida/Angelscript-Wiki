### FNiagaraSimCacheCreateParameters


**属性**:

- `ENiagaraSimCacheAttributeCaptureMode AttributeCaptureMode [How do we want to capture attributes for the simulation cache.
The mode selected depends on what situations the cache can be used in.]`
- `TArray<FName> ExplicitCaptureAttributes [List of attributes to capture when the capture attribute capture mode is set to explicit.
For example, adding MyEmitter.Particles.Position will only gather that attribute inside the cache.]`
- `TArray<FName> InterpolationExcludeAttributes [List of specific Attributes to exclude interpolation for.  They must be types that are supported for interpolation.
For example, MyEmitter.Particles.MyPosition would force MyPosition to be interpolated.]`
- `TArray<FName> InterpolationIncludeAttributes [List of specific Attributes to include when using interpolation.  They must be types that are supported for interpolation.
For example, MyEmitter.Particles.MyPosition would force MyPosition to be interpolated.]`
- `TArray<FName> RebaseExcludeAttributes [List of Attributes to force exclude from the SimCache rebase, they should be the full path to the attribute
For example, MyEmitter.Particles.MyQuat would force the particle attribute MyQuat to be included for MyEmitter]`
- `TArray<FName> RebaseIncludeAttributes [List of Attributes to force include in the SimCache rebase, they should be the full path to the attribute
For example, MyEmitter.Particles.MyQuat would force the particle attribute MyQuat to be included for MyEmitter]`
- `bool bAllowDataInterfaceCaching [When enabled Data Interface data will be stored in the SimCache.
This can result in a large increase to the cache size, depending on what Data Interfaces are used]`
- `bool bAllowInterpolation [When enabled we allow the cache to be generated for interpolation.
This will increase the memory usage for the cache slightly but can allow you to reduce the capture rate.]`
- `bool bAllowRebasing [When enabled allows the SimCache to be re-based.
i.e. World space emitters can be moved to the new component's location]`
- `bool bAllowSerializeLargeCache [When enabled the cache will support serializing large amounts of cache data.]`
- `bool bAllowVelocityExtrapolation [When enabled we allow the cache to be generated for extrapolation.
This will force the velocity attribute to be maintained.]`
- `bool bIncludeDebugData [When enabled additional information is stored that can be useful for debugging a simulation]`
- `bool bInterpolateAllTypes [When enabled all support types for interpolation will be included, this set may increase in future releases.
When disabled we only interpolate Position / Quat attributes.]`


**方法**:

- `FNiagaraSimCacheCreateParameters& opAssign(FNiagaraSimCacheCreateParameters Other)`

---

