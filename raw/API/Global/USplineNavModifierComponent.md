### USplineNavModifierComponent


Used to assign a chosen NavArea to the nav mesh in the vicinity of a chosen spline.
A tube is constructed around the spline and intersected with the nav mesh. Set its dimensions with StrokeWidth and StrokeHeight.

**属性**:

- `FComponentReference AttachedSpline [The SplineComponent which will modify the nav mesh; it must also be attached to this component's owner actor]`
- `float StrokeHeight [Cross-sectional height of the tube enclosing the spline]`
- `float StrokeWidth [Cross-sectional width of the tube enclosing the spline]`
- `ESubdivisionLOD SubdivisionLOD [Higher LOD will capture finer details in the spline]`
- `bool bUpdateNavDataOnSplineChange [If true, any changes to Spline Components on this actor will cause this component to update the nav mesh.
This will be slow if the spline has many points, or the nav mesh is sufficiently large.]`

---

