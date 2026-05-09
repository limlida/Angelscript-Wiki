### UNiagaraEffectType


Contains settings and working data shared among many Niagara systems that share some commonality of type, for example ImpactFX vs EnvironmentalFX.
Main usage of effect types is to control scalability settings for a group of effects, setting visibility and cull reactions on a per-platform basis.

Effect types can also be used for validation, checking that the content passes all the configured validation rule sets.

The effect type is set in Niagara systems in the system properties.

**属性**:

- `ENiagaraCullReaction CullReaction [How effects of this type react when they fail the cull checks.
Applied to all effects using this effect type and can not be overridden per effect.]`
- `FNiagaraEmitterScalabilitySettingsArray EmitterScalabilitySettings []`
- `UNiagaraBaselineController PerformanceBaselineController [Controls generation of performance baseline data for this effect type.]`
- `UNiagaraSignificanceHandler SignificanceHandler [Used to determine the relative significance of FX in the scene which is used in other scalability systems such as instance count culling.]`
- `FNiagaraSystemScalabilitySettingsArray SystemScalabilitySettings []`
- `ENiagaraScalabilityUpdateFrequency UpdateFrequency [How regularly effects of this type are checked for scalability.]`
- `TArray<TObjectPtr<UNiagaraValidationRuleSet>> ValidationRuleSets [Array of reusable rule sets to apply when checking content. To create your own rules, write a custom class that extends UNiagaraValidationRule.]`
- `TArray<TObjectPtr<UNiagaraValidationRule>> ValidationRules [A set of rules to apply when checking content. To create your own rules, write a custom class that extends UNiagaraValidationRule.]`
- `bool bAllowCullingForLocalPlayers [Controls whether or not culling is allowed for FX that are owned by, attached to or instigated by a locally controlled pawn.]`

---

