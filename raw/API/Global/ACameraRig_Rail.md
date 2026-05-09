### ACameraRig_Rail


**属性**:

- `float32 CurrentPositionOnRail [Defines current position of the mount point along the rail, in terms of normalized distance from the beginning of the rail.]`
- `float32 PreviewMeshScale [Determines the scale of the rail mesh preview]`
- `USceneComponent RailCameraMount [Component to define the attach point for cameras. Moves along the rail.]`
- `USplineComponent RailSplineComponent [Spline component to define the rail path.]`
- `USceneComponent TransformComponent [Root component to give the whole actor a transform.]`
- `bool bLockOrientationToRail [Determines whether the orientation of the mount should be in the direction of the rail.]`
- `bool bShowRailVisualization [Determines whether or not to show the rail mesh preview.]`


**方法**:

- `USplineComponent GetRailSplineComponent()`  
  Returns the spline component that defines the rail path

---

