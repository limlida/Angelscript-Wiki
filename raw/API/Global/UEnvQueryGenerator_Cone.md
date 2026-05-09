### UEnvQueryGenerator_Cone


**属性**:

- `FAIDataProviderFloatValue AlignedPointsDistance [Distance between each point of the same angle]`
- `FAIDataProviderFloatValue AngleStep [The step of the angle increase. Angle step must be >=1
Smaller values generate less items]`
- `TSubclassOf<UEnvQueryContext> CenterActor [The actor (or actors) that will generate a cone in their facing direction]`
- `FAIDataProviderFloatValue ConeDegrees [Maximum degrees of the generated cone]`
- `FAIDataProviderFloatValue Range [Generation distance]`
- `bool bIncludeContextLocation [Whether to include CenterActors' locations when generating items.
    Note that this option skips the MinAngledPointsDistance parameter.]`

---

