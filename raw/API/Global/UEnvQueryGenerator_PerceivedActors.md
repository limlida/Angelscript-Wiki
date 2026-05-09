### UEnvQueryGenerator_PerceivedActors


Gathers actors perceived by context

**属性**:

- `TSubclassOf<AActor> AllowedActorClass [If set will be used to filter results]`
- `TSubclassOf<UEnvQueryContext> ListenerContext [The perception listener to use as a source of information]`
- `FAIDataProviderFloatValue SearchRadius [Additional distance limit imposed on the items generated. Perception's range limit still applies.]`
- `TSubclassOf<UAISense> SenseToUse [If set will be used to filter gathered results so that only actors perceived with a given sense are considered]`
- `bool bIncludeKnownActors [Indicates whether to include all actors known via perception (TRUE) or just the ones actively being perceived
at the moment (example "currently visible" as opposed to "seen and the perception stimulus haven't expired yet").
@see FAIStimulus.bExpired]`

---

