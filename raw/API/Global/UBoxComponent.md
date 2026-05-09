### UBoxComponent


A box generally used for simple collision. Bounds are rendered as lines in the editor.

**属性**:

- `FVector BoxExtent [The extents (radii dimensions) of the box *]`


**方法**:

- `FVector GetScaledBoxExtent() const`  
  @return the box extent, scaled by the component scale.
- `FVector GetUnscaledBoxExtent() const`  
  @return the box extent, ignoring component scale.
- `SetBoxExtent(FVector InBoxExtent, bool bUpdateOverlaps = true)`  
  Change the box extent size. This is the unscaled size, before component scale is applied.
@param       InBoxExtent: new extent (radius) for the box.
@param       bUpdateOverlaps: if true and this shape is registered and collides, updates touching array for owner actor.

---

