### UMirrorToolProperties


**属性**:

- `EMirrorOperationMode OperationMode [Mode of operation.]`
- `float PlaneTolerance [Distance (in unscaled mesh space) to allow a point to be from the plane and still consider it "on the mirror plane".]`
- `EMeshMirrorWeldNormalMode WeldVerticesNormalMode [The normal compute method for vertices welded along the mirror plane.]`
- `EMirrorSaveMode WriteTo [How to save the result.]`
- `bool bAllowBowtieVertexCreation [When welding, whether to allow bowtie vertices to be created, or to duplicate the vertex.]`
- `bool bCropAlongMirrorPlaneFirst [Cut off everything on the back side of the mirror plane before mirroring.]`
- `bool bShowPreview [Whether to show the preview.]`
- `bool bSimplifyAlongCrop [Whether to locally simplify new edges created when cropping along the mirror plane. Will only simplify when doing so will not change the shape, UVs or PolyGroups.]`
- `bool bWeldVerticesOnMirrorPlane [Weld vertices that lie on the mirror plane. Vertices will not be welded if doing so would give an edge more than two faces, or if they are part of a face in the plane.]`

---

