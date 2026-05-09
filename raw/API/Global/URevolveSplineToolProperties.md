### URevolveSplineToolProperties


**属性**:

- `FVector2D AxisOrientation [Sets the revolution axis pitch and yaw.]`
- `FVector AxisOrigin [Sets the revolution axis origin.]`
- `ERevolvePropertiesCapFillMode CapFillMode [Determines how end caps are created. This is not relevant if the end caps are not visible or if the path is not closed.]`
- `float ErrorTolerance [How far to allow the triangulation boundary can deviate from the spline curve before we add more vertices.]`
- `float MaxSampleDistance [The maximal distance that the spacing should be allowed to be.]`
- `ERevolveSplineSampleMode SampleMode [Determines how points to revolve are actually picked from the spline.]`
- `bool bClosePathToAxis [Connect the ends of an open path to the axis to add caps to the top and bottom of the revolved result.
This is not relevant for paths that are already closed.]`
- `bool bResetAxisOnStart [If true, the revolution axis is re-fit to the input spline on each tool start. If false, the previous
revolution axis is kept.]`

---

