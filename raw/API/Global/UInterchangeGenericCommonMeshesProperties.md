### UInterchangeGenericCommonMeshesProperties


**属性**:

- `EInterchangeForceMeshType ForceAllMeshAsType [If set, imports all meshes in the source as either static meshes or skeletal meshes.
For skeletal meshes the conversion will happen only if there is no skinned meshes.
Mixing rigid skeletal mesh with skinned mesh is not good and will result in multiple skeletal meshes.]`
- `EInterchangeVertexColorImportOption VertexColorImportOption [Specify how vertex colors should be imported.]`
- `FColor VertexOverrideColor [Specify an override color for use when the Vertex Color Import Option setting is set to Override.]`
- `bool bAutoDetectMeshType [If enabled, and some static mesh transforms are animated, the pipeline will convert the static mesh into a rigid skeletal mesh.
This setting is only used if the Force All Meshes As Type setting is set to "None".]`
- `bool bBakeMeshes [If enabled, meshes are baked with the scene instance hierarchy transform.]`
- `bool bBakePivotMeshes [If enabled, the inverse node rotation pivot will be apply to the mesh vertices. The pivot from the DCC will then be the origin of the mesh.]`
- `bool bComputeWeightedNormals [If enabled, normals are computed using the surface area and the corner angle of the triangle as a ratio.]`
- `bool bImportLods [If enabled, any existing LODs for meshes are imported. This setting is only used if the Bake Meshes setting is also enabled.]`
- `bool bImportSockets [If checked, import sockets
StaticMesh, naming convention, SOCKET_MeshName_xx where "MeshName" should match the mesh you want to add socket to. The xx part is to add a unique id if many socket on the same mesh exist.
SkeletalMesh, Naming convention, any leaf scene node under the skeleton root with a name starting with "SOCKET_" prefix.]`
- `bool bKeepSectionsSeparate [If checked, sections with matching materials are kept separate and will not get combined.]`
- `bool bRecomputeNormals [If enabled, normals in the imported mesh are ignored and recomputed.]`
- `bool bRecomputeTangents [If enabled, tangents in the imported mesh are ignored and recomputed.]`
- `bool bRemoveDegenerates [If true, degenerate triangles are removed.]`
- `bool bSingleBoneSkeleton [If enabled, converted static meshes to skeletal meshes will use a skeleton with a unique bone at the geometry origin.
Otherwise, the bone structure is determined by the model hierarchy.
This setting is only used if Force All Meshes As Type setting is set to "Skeletal Mesh".]`
- `bool bUseBackwardsCompatibleF16TruncUVs [If enabled, UVs are converted to 16-bit by a legacy truncation process instead of the default rounding process. This may avoid differences when reimporting older content.]`
- `bool bUseFullPrecisionUVs [If true, UVs are stored at full floating-point precision.]`
- `bool bUseHighPrecisionTangentBasis [If true, tangents are stored at 16-bit vs 8-bit precision.]`
- `bool bUseMikkTSpace [If enabled, tangents are recomputed using MikkTSpace.]`

---

