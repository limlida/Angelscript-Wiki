### FEnvOverlapData


**属性**:

- `float32 ExtentX [shape parameter for overlap]`
- `float32 ExtentY [shape parameter for overlap]`
- `float32 ExtentZ [shape parameter for overlap]`
- `ECollisionChannel OverlapChannel [geometry trace channel used for overlap]`
- `EEnvOverlapShape OverlapShape [shape used for geometry overlap]`
- `FVector ShapeOffset [Offset from the item location at which to test the overlap.  For example, you may need to offset vertically to avoid overlaps with flat ground.]`
- `bool bOnlyBlockingHits [if set, overlap will look only for blocking hits]`
- `bool bOverlapComplex [if set, overlap will run on complex collisions]`
- `bool bSkipOverlapQuerier [if set, overlap will skip querier context hits]`


**方法**:

- `FEnvOverlapData& opAssign(FEnvOverlapData Other)`

---

