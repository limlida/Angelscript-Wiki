### UCapsuleComponent


A capsule generally used for simple collision. Bounds are rendered as lines in the editor.

**属性**:

- `float32 CapsuleHalfHeight [Half-height, from center of capsule to the end of top or bottom hemisphere.
This cannot be less than CapsuleRadius.]`
- `float32 CapsuleRadius [Radius of cap hemispheres and center cylinder.
This cannot be more than CapsuleHalfHeight.]`


**方法**:

- `float32 GetScaledCapsuleHalfHeight() const`  
  Returns the capsule half-height scaled by the component scale. This includes both the cylinder and hemisphere cap.
@return The capsule half-height scaled by the component scale.
- `float32 GetScaledCapsuleHalfHeight_WithoutHemisphere() const`  
  Returns the capsule half-height minus radius (to exclude the hemisphere), scaled by the component scale.
From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins.
@return The capsule half-height minus radius, scaled by the component scale.
- `float32 GetScaledCapsuleRadius() const`  
  Returns the capsule radius scaled by the component scale.
@return The capsule radius scaled by the component scale.
- `GetScaledCapsuleSize(float32& OutRadius, float32& OutHalfHeight) const`  
  Returns the capsule radius and half-height scaled by the component scale. Half-height includes the hemisphere end cap.
@param OutRadius Radius of the capsule, scaled by the component scale.
@param OutHalfHeight Half-height of the capsule, scaled by the component scale. Includes the hemisphere end cap.
@return The capsule radius and half-height scaled by the component scale.
- `GetScaledCapsuleSize_WithoutHemisphere(float32& OutRadius, float32& OutHalfHeightWithoutHemisphere) const`  
  Returns the capsule radius and half-height scaled by the component scale. Half-height excludes the hemisphere end cap.
@param OutRadius Radius of the capsule, ignoring component scaling.
@param OutHalfHeightWithoutHemisphere Half-height of the capsule, scaled by the component scale. Excludes the hemisphere end cap.
@return The capsule radius and half-height scaled by the component scale.
- `float32 GetShapeScale() const`  
  Get the scale used by this shape. This is a uniform scale that is the minimum of any non-uniform scaling.
@return the scale used by this shape.
- `float32 GetUnscaledCapsuleHalfHeight() const`  
  Returns the capsule half-height, ignoring component scaling. This includes the hemisphere end cap.
@return The capsule radius, ignoring component scaling.
- `float32 GetUnscaledCapsuleHalfHeight_WithoutHemisphere() const`  
  Returns the capsule half-height minus radius (to exclude the hemisphere), ignoring component scaling. This excludes the hemisphere end cap.
From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins.
@return The capsule half-height minus radius, ignoring component scaling.
- `float32 GetUnscaledCapsuleRadius() const`  
  Returns the capsule radius, ignoring component scaling.
@return the capsule radius, ignoring component scaling.
- `GetUnscaledCapsuleSize(float32& OutRadius, float32& OutHalfHeight) const`  
  Returns the capsule radius and half-height scaled by the component scale. Half-height includes the hemisphere end cap.
@param OutRadius Radius of the capsule, scaled by the component scale.
@param OutHalfHeight Half-height of the capsule, scaled by the component scale. Includes the hemisphere end cap.
@return The capsule radius and half-height scaled by the component scale.
- `GetUnscaledCapsuleSize_WithoutHemisphere(float32& OutRadius, float32& OutHalfHeightWithoutHemisphere) const`  
  Returns the capsule radius and half-height, ignoring component scaling. Half-height excludes the hemisphere end cap.
@param OutRadius Radius of the capsule, ignoring component scaling.
@param OutHalfHeightWithoutHemisphere Half-height of the capsule, scaled by the component scale. Excludes the hemisphere end cap.
@return The capsule radius and half-height (excluding hemisphere end cap), ignoring component scaling.
- `SetCapsuleHalfHeight(float32 HalfHeight, bool bUpdateOverlaps = true)`  
  Set the capsule half-height. This is the unscaled half-height, before component scale is applied.
If this capsule collides, updates touching array for owner actor.
@param       HalfHeight : half-height, from capsule center to end of top or bottom hemisphere.
@param       bUpdateOverlaps: if true and this shape is registered and collides, updates touching array for owner actor.
- `SetCapsuleRadius(float32 Radius, bool bUpdateOverlaps = true)`  
  Set the capsule radius. This is the unscaled radius, before component scale is applied.
If this capsule collides, updates touching array for owner actor.
@param       Radius : radius of end-cap hemispheres and center cylinder.
@param       bUpdateOverlaps: if true and this shape is registered and collides, updates touching array for owner actor.
- `SetCapsuleSize(float32 InRadius, float32 InHalfHeight, bool bUpdateOverlaps = true)`  
  Change the capsule size. This is the unscaled size, before component scale is applied.
@param       InRadius : radius of end-cap hemispheres and center cylinder.
@param       InHalfHeight : half-height, from capsule center to end of top or bottom hemisphere.
@param       bUpdateOverlaps: if true and this shape is registered and collides, updates touching array for owner actor.

---

