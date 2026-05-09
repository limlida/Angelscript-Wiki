### UMeshInspectorMaterialProperties


material settings for mesh inspector tool

**属性**:

- `float32 CheckerDensity [Number of checkerboard tiles within the 0 to 1 range; only available when Checkerboard is selected as material mode]`
- `FLinearColor Color [Main Color of Material]`
- `EMeshInspectorMaterialMode MaterialMode [Material that will be used to render the mesh]`
- `float Opacity [Opacity of transparent material]`
- `UMaterialInterface OverrideMaterial [Material to use instead of the original material; only available when Override is selected as material mode]`
- `FLinearColor TransparentMaterialColor []`
- `FString UVChannel [Which UV channel to use for visualizing the checkerboard material on the mesh; note that this does not affect the preview layout]`
- `bool bFlatShading [Toggle flat shading on/off]`
- `bool bTwoSided [Although a two-sided transparent material causes rendering issues with overlapping faces, it is still frequently useful to see the shape when sculpting around other objects.]`

---

