### UPlaneCutToolProperties


Standard properties of the plane cut operation

**属性**:

- `float32 SpacingBetweenHalves [If keeping both halves, separate the two pieces by this amount]`
- `bool bExportSeparatedPiecesAsNewMeshAssets [If true, meshes cut into multiple pieces will be saved as separate assets on 'accept'.]`
- `bool bFillCutHole [If true, the cut surface is filled with simple planar hole fill surface(s)]`
- `bool bFillSpans [If true, will attempt to fill cut holes even if they're ill-formed (e.g. because they connect to pre-existing holes in the geometry)]`
- `bool bKeepBothHalves [If true, both halves of the cut are computed]`
- `bool bShowPreview []`
- `bool bSimplifyAlongCut [If true, will simplify triangulation along plane cut when doing so will not affect the shape, UVs or PolyGroups]`

---

