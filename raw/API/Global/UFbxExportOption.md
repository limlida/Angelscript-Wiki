### UFbxExportOption


**属性**:

- `EMovieSceneBakeType BakeActorAnimation [Bake settings for exported non-camera, non-light object animation]`
- `EMovieSceneBakeType BakeCameraAndLightAnimation [Bake settings for camera and light animation curves. Camera Scale not exported.]`
- `EFbxMaterialBakeMode BakeMaterialInputs [Bake mode determining if and how a material input is baked out to a texture. Baking is only used for non-trivial material inputs (i.e. not simple texture or constant expressions).]`
- `bool Collision [If enabled, export collision]`
- `FFbxMaterialBakeSize DefaultMaterialBakeSize [Default size of the baked out texture (containing the material input).]`
- `EFbxExportCompatibility FbxExportCompatibility [This will set the fbx sdk compatibility when exporting to fbx file. The default value is 2013]`
- `bool LevelOfDetail [If enabled, export the level of detail]`
- `bool MapSkeletalMotionToRoot [If enable, Map skeletal actor motion to the root bone of the skeleton.]`
- `bool VertexColor [If enabled, export vertex color]`
- `bool bASCII [If enabled, save as ascii instead of binary]`
- `bool bExportLocalTime [If enabled, export sequencer animation in its local time, relative to its sequence.]`
- `bool bExportMorphTargets [If enabled, export the morph targets]`
- `bool bExportPreviewMesh [If enable, the preview mesh link to the exported animations will be also exported.]`
- `bool bExportSourceMesh [* If enabled, export the highest LOD source data instead of the render data.
* Note:
*     - No LOD will be exported for static meshes. (Level Of Detail option will be ignored)
*     - No Collision will be exported for static meshes. (Collision option will be ignore)]`
- `bool bForceFrontXAxis [If enabled, export with X axis as the front axis instead of default -Y]`

---

