### UFractureTinyGeoSettings


Settings controlling how geometry is selected and merged into neighboring geometry

**属性**:

- `EMergeType MergeType [Whether to merge small geometry, or small clusters]`
- `float MinVolumeCubeRoot [If size (cube root of volume) is less than this value, geometry should be merged into neighbors -- i.e. a value of 2 merges geometry smaller than a 2x2x2 cube]`
- `ENeighborSelectionMethod NeighborSelection []`
- `float RelativeVolume [If cube root of volume relative to the overall shape's cube root of volume is less than this, the geometry should be merged into its neighbors.
      (Note: This is a bit different from the histogram viewer's "Relative Size," which instead shows values relative to the largest rigid bone.)]`
- `EGeometrySelectionMethod SelectionMethod []`
- `EUseBoneSelection UseBoneSelection [Options for using the current bone selection]`
- `bool bOnFractureLevel [Only consider bones at the current Fracture Level]`
- `bool bOnlyClusters [Only auto-consider clusters for merging. Note that leaf nodes can still be consider if manually selected.]`
- `bool bOnlySameParent [Only merge to neighbors with the same parent in the hierarchy]`
- `bool bOnlyToConnected [Only merge pieces that are connected in the proximity graph. If unchecked, connected pieces will still be favored, but if none are available the closest disconnected piece can be merged.]`

---

