### UVoxelBlendMeshesToolProperties


Properties of the blend operation

**属性**:

- `float BlendFalloff [Blend falloff controls the size of the blend region]`
- `float BlendPower [Blend power controls the shape of the blend between shapes]`
- `EVoxelBlendOperation Operation [How to combine the shapes]`
- `float ThickenShells [Thicken open-boundary surfaces (extrude them inwards) before VoxWrapping them. Units are in world space. If 0 then no extrusion is applied.]`
- `bool bRemoveInternalsAfterVoxWrap [Remove internal surfaces from the VoxWrap output, before computing the blend.]`
- `bool bVoxWrap [Apply a "VoxWrap" operation to input mesh(es) before computing the blend.  Fixes results for inputs with holes and/or self-intersections.]`

---

