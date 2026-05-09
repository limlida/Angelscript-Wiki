### UNiagaraStatelessEmitter


Editor data for stateless emitters
Generates runtime data to be consumed by the game

**属性**:

- `uint AllowedFeatureMask []`
- `FNiagaraEmitterStateData EmitterState []`
- `UNiagaraStatelessEmitterTemplate EmitterTemplate []`
- `FBox FixedBounds []`
- `TArray<TObjectPtr<UNiagaraStatelessModule>> Modules []`
- `FNiagaraPlatformSet Platforms []`
- `int RandomSeed []`
- `TArray<TObjectPtr<UNiagaraRendererProperties>> RendererProperties []`
- `FNiagaraEmitterScalabilityOverrides ScalabilityOverrides []`
- `TArray<FNiagaraStatelessSpawnInfo> SpawnInfos []`
- `bool bDeterministic`
- `bool bForceOutputAllAttributes [When enabled the emitter will output all available attributes.
You should not need to modify this with the exception of debugging / testing and as it will impact cooked performance and memory]`
- `bool bForceOutputUniqueID [When enabled the emitter will always include UniqueID in the output attributes.
You should not need to modify this with the exception of debugging / testing and as it will impact cooked performance and memory]`

---

