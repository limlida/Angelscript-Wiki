### UDisplaceMeshTextureMapProperties


PropertySet for properties affecting the Image Map displacement type.

**属性**:

- `UCurveFloat AdjustmentCurve [This curve is queried in the range [0,1] to adjust contrast of the displacement map.]`
- `EDisplaceMeshToolChannelType Channel [Channel in the displacement map to use.]`
- `UTexture2D DisplacementMap [The texture to sample for displacement.]`
- `float32 DisplacementMapBaseValue [The value in the texture map that corresponds to no displacement. For instance, if set to 0, then all
       displacement will be positive. If set to 0.5, displacement below 0.5 will be negative, and above will be
       positive. Default is for 128/255 to be no displacement.]`
- `FVector2D UVOffset [When sampling from the texture map, how to offset the mesh UV's. This will result in offsetting the
      tiling of the texture map across the mesh.]`
- `FVector2D UVScale [When sampling from the texture map, how to scale the mesh UV's in the x and y directions. For a mesh with
      UV's in the range 0 to 1, setting a scale above 1 will result in tiling the texture map, and scaling below
      1 will result in using only part of the texture map.]`
- `bool bApplyAdjustmentCurve [When true, applies a function to remap the values in the displacement map, which can be used
       for contrast adjustment. The texture map values are converted to the range [0,1] before applying
       the remapping.]`
- `bool bRecalcNormals [Recalculate normals from displaced mesh. Disable this if you are applying Displacements that are paired with an existing Normal Map in your Material.]`

---

