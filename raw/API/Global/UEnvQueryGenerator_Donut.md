### UEnvQueryGenerator_Donut


**属性**:

- `FAIDataProviderFloatValue ArcAngle [If you generate items on a piece of circle you define angle of Arc cut here]`
- `FEnvDirection ArcDirection [If you generate items on a piece of circle you define direction of Arc cut here]`
- `TSubclassOf<UEnvQueryContext> Center [context]`
- `FAIDataProviderFloatValue InnerRadius [min distance between point and context]`
- `FAIDataProviderIntValue NumberOfRings [number of rings to generate]`
- `FAIDataProviderFloatValue OuterRadius [max distance between point and context]`
- `FAIDataProviderIntValue PointsPerRing [number of items to generate for each ring]`
- `bool bDefineArc`
- `bool bUseSpiralPattern [If true, the rings of the wheel will be rotated in a spiral pattern.  If false, they will all be at a zero
rotation, looking more like the spokes on a wheel.]`

---

