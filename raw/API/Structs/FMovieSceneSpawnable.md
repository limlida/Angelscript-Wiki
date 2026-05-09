### FMovieSceneSpawnable


MovieSceneSpawnable describes an object that can be spawned for this MovieScene

**属性**:

- `FTransform SpawnTransform [Optional spawn transform]`
- `TArray<FName> Tags [Array of tags that can be used for grouping and categorizing.]`
- `bool bContinuouslyRespawn [When enabled, this spawnable will always be respawned if it gets destroyed externally. When disabled, this object will only ever be spawned once for each spawn key even if it is destroyed externally.]`
- `bool bNetAddressableName [When enabled, the actor will be spawned with a unique name so that it can be addressable between clients and servers.]`


**方法**:

- `FMovieSceneSpawnable& opAssign(FMovieSceneSpawnable Other)`

---

