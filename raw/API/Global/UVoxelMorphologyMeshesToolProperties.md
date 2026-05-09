### UVoxelMorphologyMeshesToolProperties


Properties of the morphology tool

**属性**:

- `float Distance [Distance to offset the mesh]`
- `EMorphologyOperation Operation [Which offset (or morphology) operation to apply]`
- `float ThickenShells [Thicken open-boundary surfaces (extrude them inwards) before VoxWrapping them. Units are in world space. If 0, no extrusion is applied.]`
- `bool bRemoveInternalsAfterVoxWrap [Remove internal surfaces from the VoxWrap output, before computing the morphology.]`
- `bool bVoxWrap [Apply a "VoxWrap" operation to input mesh(es) before computing the morphology.  Fixes results for inputs with holes and/or self-intersections.]`

---

