### FWaterCheckResult


Data about the overlapping volume typically used for swimming

**属性**:

- `FHitResult HitResult [Hit result of the test that found a volume. Includes more specific data about the point of impact and surface normal at that point.]`
- `FWaterFlowSplineData WaterSplineData [Water Spline data to be used in calculating swimming movement, FX, etc.]`
- `bool bSwimmableVolume [True if the hit found a valid swimmable volume.]`


**方法**:

- `FWaterCheckResult& opAssign(FWaterCheckResult Other)`

---

