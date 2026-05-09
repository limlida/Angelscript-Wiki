### UPointSetComponent


UPointSetComponent is a Component that draws a set of points, as small squares.
Per-point Color and (view-space) Size is supported. Normals are not supported.

Points are inserted with an externally-defined ID, internally this is done via
a TSparseArray. This class allocates a contiguous TArray large enugh to hold the
largest ID. Using ReservePoints() may be beneficial for huge arrays.

The points are drawn as two triangles (ie a square) orthogonal to the view direction.
The actual point size is calculated in the shader, and so a custom material must be used.

**方法**:

- `int AddPoints(TArray<FVector> Positions, FColor InColor, float32 InSize = 2.000000, float32 InDepthBias = 0.000000)`  
  Add points to be rendered using the component.
@return Number of added points
- `Clear()`  
  Clear all primitives
- `SetPointMaterial(UMaterialInterface InPointMaterial)`  
  Specify material which handles points

---

