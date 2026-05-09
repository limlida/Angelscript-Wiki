### UStaticMesh


A StaticMesh is a piece of geometry that consists of a static set of polygons.
Static Meshes can be translated, rotated, and scaled, but they cannot have their vertices animated in any way. As such, they are more efficient
to render than other types of geometry such as USkeletalMesh, and they are often the basic building block of levels created in the engine.

@see https://docs.unrealengine.com/latest/INT/Engine/Content/Types/StaticMeshes/
@see AStaticMeshActor, UStaticMeshComponent

**属性**:

- `UAssetImportData AssetImportData []`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `UBodySetup BodySetup []`
- `UStaticMesh ComplexCollisionMesh []`
- `float32 DistanceFieldSelfShadowBias [Useful for reducing self shadowing from distance field methods when using world position offset to animate the mesh's vertices.]`
- `int LODForCollision [Specifies which mesh LOD to use for complex (per-poly) collision.
Sometimes it can be desirable to use a lower poly representation for collision to reduce memory usage, improve performance and behaviour.
Collision representation does not change based on distance to camera.]`
- `FName LODGroup []`
- `int LightMapCoordinateIndex [The light map coordinate index]`
- `int LightMapResolution [The light map resolution]`
- `int MeshPaintTextureCoordinateIndex [The default coordinate index to use when texture color painting on this mesh.]`
- `int MeshPaintTextureResolution [The resolution of texture color mesh paint textures on this mesh.
The final size will be rounded up to a power of 2 and a multiple of the "Mesh Paint Tile Size" project setting.
A default value of 0 will auto calculate the size using the "Mesh paint texels per vertex" project setting.]`
- `FMeshNaniteSettings NaniteSettings []`
- `UNavCollisionBase NavCollision []`
- `FVector NegativeBoundsExtension []`
- `FVector PositiveBoundsExtension []`
- `FMeshRayTracingProxySettings RayTracingProxySettings []`
- `TArray<FStaticMaterial> StaticMaterials []`
- `EStaticMeshPaintSupport StaticMeshPaintSupport [Whether to support per instance texture color mesh painting on components using this mesh.]`
- `UThumbnailInfo ThumbnailInfo []`
- `bool bAllowCPUAccess [If true, will keep geometry data CPU-accessible in cooked builds, rather than uploading to GPU memory and releasing it from CPU memory.
This is required if you wish to access StaticMesh geometry data on the CPU at runtime in cooked builds (e.g. to convert StaticMesh to ProceduralMeshComponent)]`
- `bool bCustomizedCollision []`
- `bool bGenerateMeshDistanceField [Whether to generate a distance field for this mesh, which can be used by DistanceField Indirect Shadows.
This is ignored if the project's 'Generate Mesh Distance Fields' setting is enabled.]`
- `bool bHasNavigationData [If true, mesh will have NavCollision property with additional data for navmesh generation and usage.
          Set to false for distant meshes (always outside navigation bounds) to save memory on collision data.]`
- `bool bSupportGpuUniformlyDistributedSampling [If true, a GPU buffer containing required data for uniform mesh surface sampling will be created at load time.
It is created from the cpu data so bSupportUniformlyDistributedSampling is also required to be true.]`
- `bool bSupportPhysicalMaterialMasks [If true, complex collision data will store UVs and face remap table for use when performing
PhysicalMaterialMask lookups in cooked builds. Note the increased memory cost for this
functionality.]`
- `bool bSupportRayTracing [If true, a ray tracing acceleration structure will be built for this mesh and it may be used in ray tracing effects]`
- `bool bSupportUniformlyDistributedSampling [Mesh supports uniformly distributed sampling in constant time.
Memory cost is 8 bytes per triangle.
Example usage is uniform spawning of particles.]`
- `bool bUseLegacyTangentScaling`


**方法**:

- `FName AddMaterial(UMaterialInterface Material)`  
  Adds a new material and return its slot name
- `AddSocket(UStaticMeshSocket Socket)`  
  Add a socket object in this StaticMesh.
- `BuildFromStaticMeshDescriptions(TArray<UStaticMeshDescription> StaticMeshDescriptions, bool bBuildSimpleCollision = false, bool bFastBuild = true)`  
  Builds static mesh LODs from the array of StaticMeshDescriptions passed in
- `UStaticMeshSocket FindSocket(FName InSocketName) const`  
  Find a socket object in this StaticMesh by name.
Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.
- `FBox GetBoundingBox() const`  
  Returns the bounding box, in local space including bounds extension(s), of the StaticMesh asset
- `FBoxSphereBounds GetBounds() const`  
  Returns the number of bounds of the mesh.

@return      The bounding box represented as box origin with extents and also a sphere that encapsulates that box
- `UMaterialInterface GetMaterial(int MaterialIndex) const`  
  Gets a Material given a Material Index and an LOD number

@return Requested material
- `int GetMaterialIndex(FName MaterialSlotName) const`  
  Gets a Material index given a slot name

@return Requested material
- `int GetMinimumLODForPlatform(FName PlatformName) const`
- `GetMinimumLODForPlatforms(TMap<FName,int>& PlatformMinimumLODs) const`
- `int GetMinimumLODForQualityLevel(FName QualityLevel) const`
- `GetMinimumLODForQualityLevels(TMap<FName,int>& QualityLevelMinimumLODs) const`
- `GetMinLODForQualityLevels(TMap<EPerQualityLevels,int>& QualityLevelMinimumLODs, int& Default) const`
- `int GetNumLods() const`  
  Returns the number of LODs used by the mesh.
- `int GetNumSections(int InLOD) const`  
  Returns number of Sections that this StaticMesh has, in the supplied LOD (LOD 0 is the highest)
- `int GetNumTriangles(int LODIndex) const`  
  Returns the number of triangles in the render data for the specified LOD.
- `int GetNumVertices(int LODIndex) const`  
  Returns the number of vertices for the specified LOD.
- `TArray<UStaticMeshSocket> GetSocketsByTag(FString InSocketTag) const`  
  Returns a list of sockets with the provided tag.
- `TArray<FStaticMaterial> GetStaticMaterials() const`
- `UStaticMeshDescription GetStaticMeshDescription(int LODIndex)`  
  Return a new StaticMeshDescription referencing the MeshDescription of the given LOD
- `bool IsLODScreenSizeAutoComputed() const`
- `RemoveSocket(UStaticMeshSocket Socket)`  
  Remove a socket object in this StaticMesh by providing it's pointer. Use FindSocket() if needed.
- `SetMaterial(int MaterialIndex, UMaterialInterface NewMaterial)`  
  Sets a Material given a Material Index
- `SetMinimumLODForPlatform(FName PlatformName, int InMinLOD)`
- `SetMinimumLODForPlatforms(TMap<FName,int> PlatformMinimumLODs)`
- `SetMinLODForQualityLevels(TMap<EPerQualityLevels,int> QualityLevelMinimumLODs, int Default = - 1)`  
  Allow to override min lod quality levels on a staticMesh and it Default value (-1 value for Default dont override its value).
- `SetNumSourceModels(int Num)`
- `SetStaticMaterials(TArray<FStaticMaterial> InStaticMaterials)`

---

