### UEnvQueryGenerator_OnCircle


**属性**:

- `FAIDataProviderFloatValue ArcAngle [If you generate items on a piece of circle you define angle of Arc cut here]`
- `FEnvDirection ArcDirection [If you generate items on a piece of circle you define direction of Arc cut here]`
- `FAIDataProviderFloatValue ArcDirectionOffsetDegrees [Offsets the ArcDirection and starts generating points this many degrees clock-wise around the vertical axis]`
- `TSubclassOf<UEnvQueryContext> CircleCenter [context]`
- `FAIDataProviderFloatValue CircleCenterZOffset [context offset]`
- `FAIDataProviderFloatValue CircleRadius [max distance of path between point and context]`
- `FAIDataProviderIntValue NumberOfPoints [this many items will be generated on a circle]`
- `EPointOnCircleSpacingMethod PointOnCircleSpacingMethod [how we are choosing where the points are in the circle]`
- `FAIDataProviderFloatValue SpaceBetween [items will be generated on a circle this much apart]`
- `FEnvTraceData TraceData [horizontal trace for nearest obstacle]`
- `bool bDefineArc`
- `bool bIgnoreAnyContextActorsWhenGeneratingCircle [ignore tracing into context actors when generating the circle]`

---

