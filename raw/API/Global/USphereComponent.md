### USphereComponent


A sphere generally used for simple collision. Bounds are rendered as lines in the editor.

**属性**:

- `float32 SphereRadius [The radius of the sphere *]`


**方法**:

- `float32 GetScaledSphereRadius() const`  
  @return the radius of the sphere, with component scale applied.
- `float32 GetShapeScale() const`  
  Get the scale used by this shape. This is a uniform scale that is the minimum of any non-uniform scaling.
@return the scale used by this shape.
- `float32 GetUnscaledSphereRadius() const`  
  @return the radius of the sphere, ignoring component scale.
- `SetSphereRadius(float32 InSphereRadius, bool bUpdateOverlaps = true)`  
  Change the sphere radius. This is the unscaled radius, before component scale is applied.
@param       InSphereRadius: the new sphere radius
@param       bUpdateOverlaps: if true and this shape is registered and collides, updates touching array for owner actor.

---

