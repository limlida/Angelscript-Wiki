### UVoxelSolidifyMeshesToolProperties


Properties of the solidify operation

**属性**:

- `float ExtendBounds [How far we allow bounds of solid surface to go beyond the bounds of the original input surface before clamping / cutting the surface off]`
- `int SurfaceSearchSteps [How many binary search steps to take when placing vertices on the surface]`
- `float ThickenShells [Thicken open-boundary surfaces (extrude them inwards) to ensure they are captured in the VoxWrap output. Units are in world space.]`
- `float WindingThreshold [Winding number threshold to determine what is consider inside the mesh]`
- `bool bApplyThickenShells [If true, uses the ThickenShells setting]`
- `bool bSolidAtBoundaries [Whether to fill at the border of the bounding box, if the surface extends beyond the voxel boundaries]`

---

