### UNiagaraRibbonRendererProperties


**属性**:

- `float32 CurveTension [Defines the curve tension, or how long the curve's tangents are.
Ranges from 0 to 1. The higher the value, the sharper the curve becomes.]`
- `TArray<FNiagaraRibbonShapeCustomVertex> CustomVertices [Vertices for a cross section of the ribbon in custom shape mode.]`
- `ENiagaraRibbonDrawDirection DrawDirection [Controls the order the ribbon segments will be rendered.]`
- `ENiagaraRibbonFacingMode FacingMode []`
- `UMaterialInterface Material [UNiagaraRendererProperties Interface END]`
- `FNiagaraRendererMaterialParameters MaterialParameters [If this array has entries, we will create a MaterialInstanceDynamic per Emitter instance from Material and set the Material parameters using the Niagara simulation variables listed.]`
- `FNiagaraUserParameterBinding MaterialUserParamBinding [Use the UMaterialInterface bound to this user variable if it is set to a valid value. If this is bound to a valid value and Material is also set, UserParamBinding wins.]`
- `int MaxNumRibbons []`
- `int MultiPlaneCount [Number of planes in multiplane shape. Evenly distributed from 0-90 or 0-180 degrees off camera facing depending on setting]`
- `ENiagaraRibbonShapeMode Shape [Shape of the ribbon, from flat plane, multiplane, 3d tube, and custom shapes.]`
- `float32 TessellationAngle [Defines the angle in degrees at which tessellation occurs.
Ranges from 1 to 180. Smaller values increase amount of tessellation.
If set to 0, use the maximum tessellation set above.]`
- `int TessellationFactor [Custom tessellation factor.
Ranges from 1 to 16. Greater values increase amount of tessellation.]`
- `ENiagaraRibbonTessellationMode TessellationMode [Defines the tessellation mode allowing custom tessellation parameters or disabling tessellation entirely.]`
- `int TubeSubdivisions [Number of vertices/faces in a tube.]`
- `FNiagaraRibbonUVSettings UV0Settings []`
- `FNiagaraRibbonUVSettings UV1Settings []`
- `int WidthSegmentationCount [Tessellation factor to apply to the width of the ribbon.
Ranges from 1 to 16. Greater values increase amount of tessellation.]`
- `bool bCastShadows [When disabled the renderer will not cast shadows.
The component controls if shadows are enabled, this flag allows you to disable the renderer casting shadows.]`
- `bool bEnableAccurateGeometry [Disables two-sided forced rendering (Will still respect material settings)
MultiPlane will double geometry count to have triangles facing both sides. With this off MultiPlane will switch normal direction to face view.
3D Ribbons will render like normal meshes with backface culling enabled.]`
- `bool bIncludeInHitProxy [When disabled the mesh batches do not contribute to the hit proxy, i.e. they are not part of editor selection.]`
- `bool bScreenSpaceTessellation [If checked, use the ribbon's screen space percentage to adaptively adjust the tessellation factor.]`
- `bool bUseConstantFactor [If checked, use the above constant factor. Otherwise, adaptively select the tessellation factor based on the below parameters.]`
- `bool bUseGPUInit [Whether we use the CPU or GPU to generate ribbon geometry for CPU systems.
GPU systems will always use a fully GPU initialization pipeline,
Will fall back to CPU init when GPU init isn't available.]`
- `bool bUseGeometryNormals [When enabled the ribbons normals will follow the shape of the geometry rather than being aligned to screen / custom facing.]`
- `bool bUseMaterialBackfaceCulling [When enabled the ribbons renderer will not override how backface culling works depending on shape type, but instad use the material culling mode]`

---

