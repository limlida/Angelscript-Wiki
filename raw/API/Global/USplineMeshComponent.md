### USplineMeshComponent


A Spline Mesh Component is a derivation of a Static Mesh Component which can be deformed using a spline. Only a start and end position (and tangent) can be specified.
@see https://docs.unrealengine.com/latest/INT/Resources/ContentExamples/Blueprint_Splines

**属性**:

- `ESplineMeshAxis ForwardAxis [Chooses the forward axis for the spline mesh orientation]`
- `float32 SplineBoundaryMax [Maximum coordinate along the spline forward axis which corresponds to end of spline. If set to 0.0, will use bounding box to determine bounds]`
- `float32 SplineBoundaryMin [Minimum coordinate along the spline forward axis which corresponds to start of spline. If set to 0.0, will use bounding box to determine bounds]`
- `FSplineMeshParams SplineParams [Spline that is used to deform mesh]`
- `FVector SplineUpDir [Axis (in component space) that is used to determine X axis for co-ordinates along spline]`
- `bool bAllowSplineEditingPerInstance [If true, spline mesh properties - StartPos, EndPos, StartTangent and EndTangent- may be edited per instance in the level viewport. Otherwise, the spline mesh should be initialized in the construction script.]`
- `bool bNeverNeedsCookedCollisionData [TODO Chaos this is to opt out of CreatePhysicsMeshes for certain meshes
Better long term mesh is to not call CreatePhysicsMeshes until it is known there is a mesh instance that needs it.]`
- `bool bSmoothInterpRollScale [If true, will use smooth interpolation (ease in/out) for Scale, Roll, and Offset along this section of spline. If false, uses linear]`


**方法**:

- `float32 GetBoundaryMax() const`  
  Get the boundary max
- `float32 GetBoundaryMin() const`  
  Get the boundary min
- `FVector2D GetEndOffset() const`  
  Get the end offset
- `FVector GetEndPosition() const`  
  Get the end position of spline in local space
- `float32 GetEndRoll() const`  
  Get the end roll, in radians
- `FVector2D GetEndScale() const`  
  Get the end scaling
- `FVector GetEndTangent() const`  
  Get the end tangent vector of spline in local space
- `ESplineMeshAxis GetForwardAxis() const`  
  Get the forward axis
- `FVector GetSplineUpDir() const`  
  Get the spline up direction
- `FVector2D GetStartOffset() const`  
  Get the start offset
- `FVector GetStartPosition() const`  
  Get the start position of spline in local space
- `float32 GetStartRoll() const`  
  Get the start roll, in radians
- `FVector2D GetStartScale() const`  
  Get the start scaling
- `FVector GetStartTangent() const`  
  Get the start tangent vector of spline in local space
- `SetBoundaryMax(float32 InBoundaryMax, bool bUpdateMesh = true)`  
  Set the boundary max
- `SetBoundaryMin(float32 InBoundaryMin, bool bUpdateMesh = true)`  
  Set the boundary min
- `SetEndOffset(FVector2D EndOffset, bool bUpdateMesh = true)`  
  Set the end offset
- `SetEndPosition(FVector EndPos, bool bUpdateMesh = true)`  
  Set the end position of spline in local space
- `SetEndRoll(float32 EndRoll, bool bUpdateMesh = true)`  
  Set the end roll, in radians
- `SetEndRollDegrees(float32 EndRollDegrees, bool bUpdateMesh = true)`  
  Set the end roll in degrees
- `SetEndScale(FVector2D EndScale = FVector2D ( 1.000000 , 1.000000 ), bool bUpdateMesh = true)`  
  Set the end scaling
- `SetEndTangent(FVector EndTangent, bool bUpdateMesh = true)`  
  Set the end tangent vector of spline in local space
- `SetForwardAxis(ESplineMeshAxis InForwardAxis, bool bUpdateMesh = true)`  
  Set the forward axis
- `SetSplineUpDir(FVector InSplineUpDir, bool bUpdateMesh = true)`  
  Set the spline up direction
- `SetStartAndEnd(FVector StartPos, FVector StartTangent, FVector EndPos, FVector EndTangent, bool bUpdateMesh = true)`  
  Set the start and end, position and tangent, all in local space
- `SetStartOffset(FVector2D StartOffset, bool bUpdateMesh = true)`  
  Set the start offset
- `SetStartPosition(FVector StartPos, bool bUpdateMesh = true)`  
  Set the start position of spline in local space
- `SetStartRoll(float32 StartRoll, bool bUpdateMesh = true)`  
  Set the start roll, in radians
- `SetStartRollDegrees(float32 StartRollDegrees, bool bUpdateMesh = true)`  
  Set the start roll in degrees
- `SetStartScale(FVector2D StartScale = FVector2D ( 1.000000 , 1.000000 ), bool bUpdateMesh = true)`  
  Set the start scaling
- `SetStartTangent(FVector StartTangent, bool bUpdateMesh = true)`  
  Set the start tangent vector of spline in local space
- `UpdateMesh()`  
  Update the collision and render state on the spline mesh following changes to its geometry

---

