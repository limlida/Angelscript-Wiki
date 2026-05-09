### UStaticMeshLODGenerationSettings


UStaticMeshLODGenerationSettings is intended to be a stored version of the settings used
by UGenerateStaticMeshLODProcess (and the associated UGenerateStaticMeshLODAssetTool).
This UObject is exposed as an Asset type in the Editor via UStaticMeshLODGenerationSettingsFactory.

The Tool uses these serialized settings as a 'Preset', ie the user can save a set
of configured settings, or load previously-saved settings.

**属性**:

- `FGenerateStaticMeshLODProcessSettings MeshGeneration []`
- `FGenerateStaticMeshLODProcess_NormalsSettings Normals []`
- `FGenerateStaticMeshLODProcess_PreprocessSettings Preprocessing []`
- `FGenerateStaticMeshLODProcess_CollisionSettings SimpleCollision []`
- `FGenerateStaticMeshLODProcess_SimplifySettings Simplification []`
- `FGenerateStaticMeshLODProcess_TextureSettings TextureBaking []`
- `FGenerateStaticMeshLODProcess_UVSettings UVGeneration []`

---

