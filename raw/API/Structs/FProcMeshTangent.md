### FProcMeshTangent


Struct used to specify a tangent vector for a vertex
The Y tangent is computed from the cross product of the vertex normal (Tangent Z) and the TangentX member.

**属性**:

- `FVector TangentX [Direction of X tangent for this vertex]`
- `bool bFlipTangentY [Bool that indicates whether we should flip the Y tangent when we compute it using cross product]`


**方法**:

- `FProcMeshTangent& opAssign(FProcMeshTangent Other)`

---

