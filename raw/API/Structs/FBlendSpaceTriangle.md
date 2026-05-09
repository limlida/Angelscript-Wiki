### FBlendSpaceTriangle


This is the runtime representation of a triangle. Each triangle stores its vertices etc in normalized space,
with an index to the original samples.

**属性**:

- `int SampleIndices [Indices into the samples]`
- `FVector2D Vertices [The vertices are in the normalized space - i.e. in the range 0-1.]`


**方法**:

- `FBlendSpaceTriangle& opAssign(FBlendSpaceTriangle Other)`

---

