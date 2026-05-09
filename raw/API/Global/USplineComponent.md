### USplineComponent


A spline component is a spline shape which can be used for other purposes (e.g. animating objects). It contains debug rendering capabilities.
@see https://docs.unrealengine.com/latest/INT/Resources/ContentExamples/Blueprint_Splines

**属性**:

- `FVector DefaultUpVector [Default up vector in local space to be used when calculating transforms along the spline]`
- `float32 Duration [Specifies the duration of the spline in seconds]`
- `FLinearColor EditorSelectedSplineSegmentColor [Color of selected spline component parts in the editor]`
- `FLinearColor EditorTangentColor [Color of spline point tangents in the editor]`
- `FLinearColor EditorUnselectedSplineSegmentColor [Color of unselected spline component parts in the editor]`
- `float32 LoopPosition []`
- `int ReparamStepsPerSegment [Number of steps per spline segment to place in the reparameterization table]`
- `float32 ScaleVisualizationWidth [Width of spline in editor for use with scale visualization]`
- `bool bAdjustTangentsOnSnap [Adjust tangents after snapping.]`
- `bool bAllowDiscontinuousSpline [Whether the spline's leave and arrive tangents can be different]`
- `bool bClosedLoop [Whether the spline is to be considered as a closed loop.
Use SetClosedLoop() to set this property, and IsClosedLoop() to read it.]`
- `bool bDrawDebug [If true, the spline will be rendered if the Splines showflag is set.]`
- `bool bInputSplinePointsToConstructionScript [Whether the spline points should be passed to the User Construction Script so they can be further manipulated by it.
If false, they will not be visible to it, and it will not be able to influence the per-instance positions set in the editor.]`
- `bool bLoopPositionOverride []`
- `bool bShouldVisualizeScale [Whether scale visualization should be displayed]`
- `bool bSplineHasBeenEdited [Whether the spline has been edited from its default by the spline component visualizer]`
- `bool bStationaryEndpoints [Whether the endpoints of the spline are considered stationary when traversing the spline at non-constant velocity.  Essentially this sets the endpoints' tangents to zero vectors.]`


**方法**:

- `AddPoint(FSplinePoint Point, bool bUpdateSpline = true)`  
  Adds an FSplinePoint to the spline. This contains its input key, position, tangent, rotation and scale.
- `AddPoints(TArray<FSplinePoint> Points, bool bUpdateSpline = true)`  
  Adds an array of FSplinePoints to the spline.
- `AddSplinePoint(FVector Position, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)`  
  Adds a point to the spline
- `AddSplinePointAtIndex(FVector Position, int Index, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)`  
  Adds a point to the spline at the specified index
- `ClearSplinePoints(bool bUpdateSpline = true)`  
  Clears all the points in the spline
- `bool ConvertSplineSegmentToPolyLine(int SplinePointStartIndex, ESplineCoordinateSpace CoordinateSpace, float32 MaxSquareDistanceFromSpline, TArray<FVector>& OutPoints) const`  
  Given a threshold, returns a list of vertices along the spline segment that, treated as a list of segments (polyline), matches the spline shape.
- `bool ConvertSplineToPolyLine(ESplineCoordinateSpace CoordinateSpace, float32 MaxSquareDistanceFromSpline, TArray<FVector>& OutPoints) const`  
  Given a threshold, returns a list of vertices along the spline that, treated as a list of segments (polyline), matches the spline shape.
- `bool ConvertSplineToPolyline_InDistanceRange(ESplineCoordinateSpace CoordinateSpace, float32 MaxSquareDistanceFromSpline, float32 StartDistAlongSpline, float32 EndDistAlongSpline, TArray<FVector>& OutPoints, TArray<float>& OutDistancesAlongSpline, bool bAllowWrappingIfClosed = true) const`  
  Given a threshold and a start and end distance range, returns a list of vertices along the spline that, treated as a list of segments (polyline), matches the spline shape in that range. Also fills a list of corresponding distances along the spline for each point.
- `bool ConvertSplineToPolyline_InTimeRange(ESplineCoordinateSpace CoordinateSpace, float32 MaxSquareDistanceFromSpline, float32 StartTimeAlongSpline, float32 EndTimeAlongSpline, bool bUseConstantVelocity, TArray<FVector>& OutPoints, TArray<float>& OutDistancesAlongSpline, bool bAllowWrappingIfClosed = true) const`  
  Given a threshold and start and end time range, returns a list of vertices along the spline that, treated as a list of segments (polyline), matches the spline shape in that range. Also fills a list of corresponding distances along the spline for each point.
- `bool ConvertSplineToPolyLineWithDistances(ESplineCoordinateSpace CoordinateSpace, float32 MaxSquareDistanceFromSpline, TArray<FVector>& OutPoints, TArray<float>& OutDistancesAlongSpline) const`  
  Given a threshold, returns a list of vertices along the spline that, treated as a list of segments (polyline), matches the spline shape. Also fills a list of corresponding distances along the spline for each point.
- `CreateFloatPropertyChannel(FName PropertyName)`  
  Create a float attribute channel.
@param PropertyName The desired name of the new attribute channel.
- `bool DivideSplineIntoPolylineRecursive(float32 StartDistanceAlongSpline, float32 EndDistanceAlongSpline, ESplineCoordinateSpace CoordinateSpace, float32 MaxSquareDistanceFromSpline, TArray<FVector>& OutPoints) const`  
  Given a threshold, recursively sub-divides the spline section until the list of segments (polyline) matches the spline shape. Note: Prefer ConvertSplineToPolyline_InDistanceRange
- `bool DivideSplineIntoPolylineRecursiveWithDistances(float32 StartDistanceAlongSpline, float32 EndDistanceAlongSpline, ESplineCoordinateSpace CoordinateSpace, float32 MaxSquareDistanceFromSpline, TArray<FVector>& OutPoints, TArray<float>& OutDistancesAlongSpline) const`  
  Given a threshold, recursively sub-divides the spline section until the list of segments (polyline) matches the spline shape. Note: Prefer ConvertSplineToPolyline_InDistanceRange
- `FVector FindDirectionClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a location, in world space, return a unit direction vector of the spline tangent closest to the location.
- `float32 FindInputKeyClosestToWorldLocation(FVector WorldLocation) const`  
  Given a location, in world space, return the input key closest to that location.
- `float32 FindInputKeyOnSegmentClosestToWorldLocation(FVector WorldLocation, int Index) const`  
  Given a location, in world space, return the input key closest to that location on the specified segment.
- `FVector FindLocationClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a location, in world space, return the point on the curve that is closest to the location.
- `FVector FindRightVectorClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a location, in world space, return a unit direction vector corresponding to the spline's right vector closest to the location.
- `float32 FindRollClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a location, in world space, return the spline's roll closest to the location, in degrees.
- `FRotator FindRotationClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a location, in world space, return rotation corresponding to the spline's rotation closest to the location.
- `FVector FindScaleClosestToWorldLocation(FVector WorldLocation) const`  
  Given a location, in world space, return the spline's scale closest to the location.
- `FVector FindTangentClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a location, in world space, return the tangent vector of the spline closest to the location.
- `FTransform FindTransformClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace, bool bUseScale = false) const`  
  Given a location, in world space, return an FTransform closest to that location.
- `FVector FindUpVectorClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a location, in world space, return a unit direction vector corresponding to the spline's up vector closest to the location.
- `FVector GetArriveTangentAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Get the arrive tangent at spline point
- `FVector GetDefaultUpVector(ESplineCoordinateSpace CoordinateSpace) const`  
  Gets the default up vector used by this spline
- `FVector GetDirectionAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a distance along the length of this spline, return a unit direction vector of the spline tangent there.
- `FVector GetDirectionAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace) const`  
  Get unit direction along spline at the provided input key value
- `FVector GetDirectionAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Get the direction at spline point
- `FVector GetDirectionAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false) const`  
  Given a time from 0 to the spline duration, return a unit direction vector of the spline tangent there.
- `float32 GetDistanceAlongSplineAtLocation(FVector InLocation, ESplineCoordinateSpace CoordinateSpace) const`  
  Get distance along the spline at closest point of the provided input location
- `float32 GetDistanceAlongSplineAtSplineInputKey(float32 InKey) const`  
  Get distance along the spline at the provided input key value
- `float32 GetDistanceAlongSplineAtSplinePoint(int PointIndex) const`  
  Get the distance along the spline at the spline point
- `float32 GetFloatPropertyAtIndex(int Index, FName PropertyName) const`  
  Get a float attribute value by index.
@param Index The index of the specified attribute.
@param PropertyName The name of the attribute channel containing the specified attribute.
@return The attribute value.
- `float32 GetFloatPropertyAtSplineInputKey(float32 InKey, FName PropertyName) const`  
  Get a float attribute value by parameter.
@param InKey The parameter to use when evaluating the specified attribute channel.
@param PropertyName The name of the attribute channel to evaluate.
@return The attribute value.
- `float32 GetFloatPropertyAtSplinePoint(int Index, FName PropertyName) const`  
  Get a metadata property float value along the spline at spline point
- `TArray<FName> GetFloatPropertyChannels() const`  
  @return An array of all float attribute channel names.
- `float32 GetFloatPropertyInputKeyAtIndex(int Index, FName PropertyName) const`  
  Get a float attribute parameter by index.
@param Index The index of the specified attribute.
@param PropertyName The name of the attribute channel containing the specified attribute.
@return The attribute parameter.
- `float32 GetInputKeyValueAtDistanceAlongSpline(float32 Distance) const`  
  Given a distance along the length of this spline, return the corresponding input key at that point
with a fractional component between the current input key and the next as a percentage.
- `float32 GetInputKeyValueAtSplinePoint(int PointIndex) const`  
  Get the input key (e.g. the time) of the control point of the spline at the specified index.
- `float32 GetInputKeyValueAtTime(float32 Time) const`  
  Convert a time value (in the range [0, Duration]) to an input key.
- `FVector GetLeaveTangentAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Get the leave tangent at spline point
- `GetLocationAndTangentAtSplinePoint(int PointIndex, FVector& Location, FVector& Tangent, ESplineCoordinateSpace CoordinateSpace) const`  
  Get location and tangent at a spline point
- `FVector GetLocationAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a distance along the length of this spline, return the point in space where this puts you
- `FVector GetLocationAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace) const`  
  Get location along spline at the provided input key value
- `FVector GetLocationAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Get the location at spline point
- `FVector GetLocationAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false) const`  
  Given a time from 0 to the spline duration, return the point in space where this puts you
- `int GetNumberOfPropertyValues(FName PropertyName) const`  
  Get the number of attribute values in a specified attribute channel.
@param PropertyName The name of the attribute channel.
@return The number of attribute values in the specified channel.
- `int GetNumberOfSplinePoints() const`  
  Get the number of points that make up this spline
- `int GetNumberOfSplineSegments() const`  
  Get the number of segments that make up this spline
- `FVector GetRightVectorAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a distance along the length of this spline, return a unit direction vector corresponding to the spline's right vector there.
- `FVector GetRightVectorAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace) const`  
  Get right vector at the provided input key value
- `FVector GetRightVectorAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Get the right vector at spline point
- `FVector GetRightVectorAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false) const`  
  Given a time from 0 to the spline duration, return the spline's right vector there.
- `float32 GetRollAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a distance along the length of this spline, return the spline's roll there, in degrees.
- `float32 GetRollAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace) const`  
  Get roll in degrees at the provided input key value
- `float32 GetRollAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Get the amount of roll at spline point, in degrees
- `float32 GetRollAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false) const`  
  Given a time from 0 to the spline duration, return the spline's roll there, in degrees.
- `FRotator GetRotationAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a distance along the length of this spline, return a rotation corresponding to the spline's rotation there.
- `FRotator GetRotationAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace) const`  
  Get rotator corresponding to rotation along spline at the provided input key value
- `FRotator GetRotationAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Get the rotation at spline point as a rotator
- `FRotator GetRotationAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false) const`  
  Given a time from 0 to the spline duration, return a rotation corresponding to the spline's position and direction there.
- `FVector GetScaleAtDistanceAlongSpline(float32 Distance) const`  
  Given a distance along the length of this spline, return the spline's scale there.
- `FVector GetScaleAtSplineInputKey(float32 InKey) const`  
  Get scale at the provided input key value
- `FVector GetScaleAtSplinePoint(int PointIndex) const`  
  Get the scale at spline point
- `FVector GetScaleAtTime(float32 Time, bool bUseConstantVelocity = false) const`  
  Given a time from 0 to the spline duration, return the spline's scale there.
- `float32 GetSplineLength() const`  
  Returns total length along this spline
- `FSplinePoint GetSplinePointAt(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Gets the spline point of the spline at the specified index
- `ESplinePointType GetSplinePointType(int PointIndex) const`  
  Get the type of a spline point
- `FVector GetTangentAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a distance along the length of this spline, return the tangent vector of the spline there.
- `FVector GetTangentAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace) const`  
  Get tangent along spline at the provided input key value
- `FVector GetTangentAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Get the tangent at spline point. This fetches the Leave tangent of the point.
- `FVector GetTangentAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false) const`  
  Given a time from 0 to the spline duration, return the spline's tangent there.
- `float32 GetTimeAtDistanceAlongSpline(float32 Distance) const`  
  Given a distance along the length of this spline, return the corresponding time at that point
- `FTransform GetTransformAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace, bool bUseScale = false) const`  
  Given a distance along the length of this spline, return an FTransform corresponding to that point on the spline.
- `FTransform GetTransformAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace, bool bUseScale = false) const`  
  Get transform at the provided input key value
- `FTransform GetTransformAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace, bool bUseScale = false) const`  
  Get the transform at spline point
- `FTransform GetTransformAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false, bool bUseScale = false) const`  
  Given a time from 0 to the spline duration, return the spline's transform at the corresponding position.
- `FVector GetUpVectorAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace) const`  
  Given a distance along the length of this spline, return a unit direction vector corresponding to the spline's up vector there.
- `FVector GetUpVectorAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace) const`  
  Get up vector at the provided input key value
- `FVector GetUpVectorAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace) const`  
  Get the up vector at spline point
- `FVector GetUpVectorAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false) const`  
  Given a time from 0 to the spline duration, return the spline's up vector there.
- `FVector GetVectorPropertyAtSplinePoint(int Index, FName PropertyName) const`  
  Get a metadata property vector value along the spline at spline point
- `bool IsClosedLoop() const`  
  Check whether the spline is a closed loop or not
- `RemovePropertyAtIndex(int Index, FName PropertyName)`  
  Remove an attribute value by index.
@param Index The index of the specified attribute.
@param PropertyName The name of the attribute channel containing the specified attribute.
- `bool RemovePropertyChannel(FName PropertyName)`  
  Remove an attribute channel.
@param PropertyName The name of the channel to remove.
- `RemoveSplinePoint(int Index, bool bUpdateSpline = true)`  
  Removes point at specified index from the spline
- `SetClosedLoop(bool bInClosedLoop, bool bUpdateSpline = true)`  
  Specify whether the spline is a closed loop or not. The loop position will be at 1.0 after the last point's input key
- `SetClosedLoopAtPosition(bool bInClosedLoop, float32 Key, bool bUpdateSpline = true)`  
  Specify whether the spline is a closed loop or not, and if so, the input key corresponding to the loop point
- `SetDefaultUpVector(FVector UpVector, ESplineCoordinateSpace CoordinateSpace)`  
  Sets the default up vector used by this spline
- `SetDrawDebug(bool bShow)`  
  Specify whether this spline should be rendered when the Editor/Game spline show flag is set
- `SetFloatPropertyAtIndex(int Index, float32 Value, FName PropertyName)`  
  Set a float attribute value by index.
@param Index The index of the specified attribute.
@param Value The desired attribute value.
@param PropertyName The name of the attribute channel containing the specified attribute.
- `int SetFloatPropertyAtSplineInputKey(float32 InKey, float32 Value, FName PropertyName) const`  
  Add a float attribute value by parameter.
@param InKey The desired attribute parameter.
@param Value The desired attribute value.
@param PropertyName The name of the attribute channel that will contain the new attribute value.
@return The index of the new attribute.
- `int SetFloatPropertyInputKeyAtIndex(int Index, float32 InKey, FName PropertyName)`  
  Set a float attribute parameter by index.
@param Index The index of the specified attribute.
@param InKey The desired attribute parameter.
@param PropertyName The name of the attribute channel containing the specified attribute.
@return The index of the specified attribute after changing the attribute parameter (it can change).
- `SetLocationAtSplinePoint(int PointIndex, FVector InLocation, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)`  
  Move an existing point to a new location
- `SetOverrideConstructionScript(bool InOverride)`  
  Set the spline to be edited outside of the construction script
- `SetRotationAtSplinePoint(int PointIndex, FRotator InRotation, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)`  
  Set the rotation of an existing spline point. This also aligns tangents with the forward vector of the rotation.
- `SetScaleAtSplinePoint(int PointIndex, FVector InScaleVector, bool bUpdateSpline = true)`  
  Set the scale at a given spline point
- `SetSelectedSplineSegmentColor(FLinearColor SegmentColor)`  
  Specify selected spline component segment color in the editor
- `SetSplinePoints(TArray<FVector> Points, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)`  
  Sets the spline to an array of points
- `SetSplinePointType(int PointIndex, ESplinePointType Type, bool bUpdateSpline = true)`  
  Specify the type of a spline point
- `SetTangentAtSplinePoint(int PointIndex, FVector InTangent, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)`  
  Specify the tangent at a given spline point
- `SetTangentColor(FLinearColor TangentColor)`  
  Specify selected spline component segment color in the editor
- `SetTangentsAtSplinePoint(int PointIndex, FVector InArriveTangent, FVector InLeaveTangent, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)`  
  Specify the tangents at a given spline point
- `SetUnselectedSplineSegmentColor(FLinearColor SegmentColor)`  
  Specify unselected spline component segment color in the editor
- `SetUpVectorAtSplinePoint(int PointIndex, FVector InUpVector, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)`  
  Specify the up vector at a given spline point
- `bool SupportsAttributes() const`  
  @return True if this component currently supports arbitrary attribute channels, false otherwise.
- `UpdateSpline()`  
  Update the spline tangents and SplineReparamTable

---

