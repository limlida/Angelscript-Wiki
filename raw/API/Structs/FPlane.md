### FPlane


A plane definition in 3D space.
@note The full C++ class is located here: Engine\Source\Runtime\Core\Public\Math\Plane.h

**属性**:

- `float W`
- `float X`
- `float Y`
- `float Z`


**方法**:

- `float PlaneDot(FVector Location) const`
- `FVector GetOrigin() const`
- `FVector GetNormal() const`
- `FVector RayPlaneIntersection(FVector RayOrigin, FVector RayDirection) const`  
  Find the intersection of a ray and a plane.  The ray has a start point with an infinite length.  Assumes that theline and plane do indeed intersect; you must make sure they're not parallel before calling.@param RayOrigin	The start point of the ray@param RayDirection	The direction the ray is pointing (normalized vector)@return The point of intersection between the ray and the plane.
- `bool SegmentPlaneIntersection(FVector StartPoint, FVector EndPoint, FVector& OutIntersectionPoint) const`  
  Returns true if there is an intersection between the segment specified by StartPoint and Endpoint, andthe plane on which polygon Plane lies. If there is an intersection, the point is placed in out_IntersectionPoint@param StartPoint - start point of segment@param EndPoint   - end point of segment@param OutIntersectionPoint - the point on the segment that intersects the mesh (if any)@return true if intersection occurred
- `FPlane& opAssign(FPlane Other)`

---

