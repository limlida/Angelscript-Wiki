### FSpriteGeometryCollection


**属性**:

- `float32 AlphaThreshold [Alpha threshold for a transparent pixel (range 0..1, anything equal or below this value will be considered unimportant)]`
- `float32 DetailAmount [Amount to detail to consider when shrink-wrapping (range 0..1, 0 = low detail, 1 = high detail)]`
- `ESpritePolygonMode GeometryType [The geometry type (automatic / manual)]`
- `int PixelsPerSubdivisionX [Size of a single subdivision (in pixels) in X (for Diced mode)]`
- `int PixelsPerSubdivisionY [Size of a single subdivision (in pixels) in Y (for Diced mode)]`
- `TArray<FSpriteGeometryShape> Shapes [List of shapes]`
- `float32 SimplifyEpsilon [This is the threshold below which multiple vertices will be merged together when doing shrink-wrapping.  Higher values result in fewer vertices.]`
- `bool bAvoidVertexMerging [Experimental: Hint to the triangulation routine that extra vertices should be preserved]`


**方法**:

- `FSpriteGeometryCollection& opAssign(FSpriteGeometryCollection Other)`

---

