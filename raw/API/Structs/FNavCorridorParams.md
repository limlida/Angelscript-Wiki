### FNavCorridorParams


**属性**:

- `float32 LargeSectorThreshold [Simplification is skipped if two neighbour sectors combined are longer than this. This ensures that long sectors do not lose volume due to simplification.]`
- `float32 ObstacleTaperAngle [How much the outer edges of obstacles are tapered out. This prevents small sectors and local traps.]`
- `float32 PathOffsetFromBoundaries [Distance to maintain between the path and the corridor boundaries. If the corridor is too tight, the offset will be reduced to the available space.]`
- `float32 SimplifyEdgeThreshold [Corridor edge max simplification distance.]`
- `float32 SmallSectorThreshold [Attempt to remove sectors narrower than this from the corridor.]`
- `float32 Width [Width of the corridor to build]`
- `bool bSimplifyConcavePortals [If true do concave portals simplification.]`
- `bool bSimplifyConvexPortals [If true do convex portals simplification.]`
- `bool bSimplifyFlipPortals [If true do flip portals simplification.]`


**方法**:

- `FNavCorridorParams& opAssign(FNavCorridorParams Other)`

---

