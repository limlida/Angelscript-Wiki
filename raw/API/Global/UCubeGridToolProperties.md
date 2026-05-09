### UCubeGridToolProperties


**属性**:

- `float BlockBaseSize [Smallest block size to use in the grid, i.e. the block size at Grid Power 0. This
       changes Current Block Size according to current value of Grid Power.]`
- `int BlocksPerStep [How many blocks each push/pull invocation will do at a time.]`
- `float CurrentBlockSize [Sets the size of a block at the current grid power. This changes Base Block Size
such that the given value is achieved at the the current value of Grid Power.]`
- `ECubeGridToolFaceSelectionMode FaceSelectionMode [How the selected face is determined.]`
- `FRotator GridFrameOrientation []`
- `FVector GridFrameOrigin []`
- `uint8 GridPower [Determines cube grid scale. Can also be adjusted with hotkeys. This changes Current
       Block Size to match the current Base Block Size and Grid Power (differently depending
       on the Power of Two setting).]`
- `bool bCrosswiseDiagonal [When pushing/pulling in a way where the diagonal matters, setting this to true
       makes the diagonal generally try to lie flat across the face rather than at
       an incline.]`
- `bool bHitGridGroundPlaneIfCloser [When the grid ground plane is above some geometry, whether we should hit that
       plane or pass through to the other geometry.]`
- `bool bHitUnrelatedGeometry [When raycasting to find a selected grid face, this determines whether geometry
       in the scene that is not part of the edited mesh is hit.]`
- `bool bKeepSideGroups [When performing multiple push/pulls with the same selection, attempt to keep the
       same group IDs on the sides of the new geometry (ie multiple E/Q presses will not
       result in different group topology around the sides compared to a single Ctrl+drag).]`
- `bool bPowerOfTwoBlockSizes [When true, block sizes change by powers of two as Grid Power is changed. When false, block
sizes change by twos and fives, much like the default editor grid snapping options (for
instance, sizes might increase from 10 to 50 to 100 to 500).
Note that toggling this option will reset Grid Power and Current Block Size to default values.]`
- `bool bShowGizmo []`
- `bool bShowGrid []`
- `bool bShowSelectionMeasurements [When true, displays dimensions of the given selection in the viewport.]`

---

