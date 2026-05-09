### FRadialBoxSettings


**属性**:

- `float32 AngleBetweenItems [Amount of Euler degrees that separate each item. Only used when bDistributeItemsEvenly is false]`
- `float32 SectorCentralAngle [If we need a section of a radial (for example half-a-radial) we can define a central angle < 360 (180 in case of half-a-radial). Used when bDistributeItemsEvenly is enabled.]`
- `float32 StartingAngle [At what angle will we place the first element of the wheel?]`
- `bool bClockwiseOrder [If enabled, Places the entries in clockwise order instead of counter-clockwise order]`
- `bool bDistributeItemsEvenly [Distribute Items evenly in the whole circle. Checking this option ignores AngleBetweenItems]`


**方法**:

- `FRadialBoxSettings& opAssign(FRadialBoxSettings Other)`

---

