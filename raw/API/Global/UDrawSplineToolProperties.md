### UDrawSplineToolProperties


**属性**:

- `TWeakObjectPtr<UBlueprint> BlueprintToCreate [Blueprint to create when Output Mode is "Create Blueprint"]`
- `float ClickOffset [How far to offset spline points from the clicked surface, along the surface normal]`
- `EDrawSplineDrawMode DrawMode [How the spline is drawn in the tool.]`
- `int ExistingSplineIndexToReplace [When attaching to an existing actor or creating a blueprint, controls whether the drawn
spline replaces one of the target's existing components or gets added as a new one (if
the index is out of bounds).]`
- `float FrameVisualizationWidth [When nonzero, allows a visualization of the rotation of the spline. Can be controlled
in the detail panel after creation via "Scale Visualization Width" property.]`
- `float MinPointSpacing [Point spacing when Draw Mode is "Free Draw"]`
- `FVector OffsetDirection [Manually-specified click offset direction. Note: Will be normalized. If it is a zero vector, a default Up vector will be used instead.]`
- `ESplineOffsetMethod OffsetMethod [How to choose the direction to offset points from the clicked surface]`
- `EDrawSplineOutputMode OutputMode [Determines how the resulting spline is emitted on tool accept.]`
- `TWeakObjectPtr<AActor> TargetActor [Actor to attach to when Output Mode is "Existing Actor"]`
- `EDrawSplineUpVectorMode UpVectorMode [How the spline rotation is set. It is suggested to use a nonzero FrameVisualizationWidth to
see the effects.]`
- `bool bHitCustomPlane [Whether to place spline points on a custom, user-adjustable plane]`
- `bool bHitGroundPlanes [Whether to place spline points on a plane through the origin aligned with the Z axis in perspective views, or facing the camera in othographic views]`
- `bool bHitWorld [Whether to place spline points on the surface of objects in the world]`
- `bool bLoop [Determines whether the created spline is a loop. This can be toggled using "Closed Loop" in
the detail panel after spline creation.]`
- `bool bPreviewUsingActorCopy [When modifying existing actors, whether the result should be previewed using a copy
of that actor (rather than just drawing the spline by itself). Could be toggled off
if something about duplicating the given actor is problematic.]`
- `bool bRerunConstructionScriptOnDrag [If modifying a blueprint actor, whether to run the construction script while dragging
or only at the end of a drag. Can be toggled off for expensive construction scripts.]`

---

