### AWorldSettings


Actor containing all script accessible world properties.

**属性**:

- `TSoftClassPtr<UAISystemBase> AISystemClass`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserDataEditorOnly [Array of editor-only user data stored with the asset]`
- `TArray<TObjectPtr<UDataLayerAsset>> BaseNavmeshDataLayers [A list of runtime data layers that should be included in the base navmesh.
Editor data layers and actors outside data layers will be included.]`
- `UBookMark BookMarks []`
- `FBroadphaseSettings BroadphaseSettings []`
- `FInteriorSettings DefaultAmbientZoneSettings [Default interior settings applied to sounds that have "apply ambient volumes" set to true on their SoundClass.]`
- `USoundMix DefaultBaseSoundMix [Default Base SoundMix.]`
- `UBookmarkBase DefaultBookmark [Bookmark that will be applied when the level is loaded in the editor.]`
- `FVector DefaultColorScale [Default color scale for the level]`
- `TSubclassOf<AGameModeBase> DefaultGameMode [The default GameMode to use when starting this map in the game. If this value is NULL, the INI setting for default game type is used.]`
- `float32 DefaultMaxDistanceFieldOcclusionDistance [Max occlusion distance used by mesh distance fields, overridden if there is a movable skylight.]`
- `TSubclassOf<ADefaultPhysicsVolume> DefaultPhysicsVolumeClass [level specific default physics volume]`
- `FReverbSettings DefaultReverbSettings [Default reverb settings used by audio volumes.]`
- `float32 DynamicIndirectShadowsSelfShadowingIntensity [Controls the intensity of self-shadowing from capsule indirect shadows.
These types of shadows use approximate occluder representations, so reducing self-shadowing intensity can hide those artifacts.]`
- `float32 GlobalDistanceFieldViewDistance [Distance from the camera that the global distance field should cover.]`
- `float32 GlobalGravityZ [Set a custom gravity value for this level, in distance units per second squared.
For example, when the project's distance unit is set to centimeters (the default), normal earth gravity would be -980.0.]`
- `FTransform HLODBakingTransform [Specify the transform to apply to the source meshes when building HLODs.]`
- `TSoftClassPtr<UHierarchicalLODSetup> HLODSetupAsset [If set overrides the level settings and global project settings]`
- `TArray<FHierarchicalSimplification> HierarchicalLODSetup [Hierarchical LOD Setup]`
- `uint InstancedFoliageGridSize [Size of the grid for instanced foliage actors, only used for partitioned worlds]`
- `float32 KillZ [any actor falling below this level gets destroyed]`
- `TSubclassOf<UDamageType> KillZDamageType [The type of damage inflicted when a actor falls below KillZ]`
- `uint LandscapeSplineMeshesGridSize []`
- `FLightmassWorldInfoSettings LightmassSettings [LIGHTMASS RELATED SETTINGS *]`
- `float32 MaxCinematicTimeDilation [Highest acceptable cinematic time dilation.]`
- `float32 MaxGlobalTimeDilation [Highest acceptable global time dilation.]`
- `float32 MaxUndilatedFrameTime [Largest possible frametime, not considering dilation. Equiv to 1/SlowestFPS.]`
- `float32 MinCinematicTimeDilation [Lowest acceptable cinematic time dilation.]`
- `float32 MinGlobalTimeDilation [Lowest acceptable global time dilation.]`
- `float32 MinUndilatedFrameTime [Smallest possible frametime, not considering dilation. Equiv to 1/FastestFPS.]`
- `FNaniteSettings NaniteSettings [NANITE SETTINGS *]`
- `uint NavigationDataBuilderLoadingCellSize [Loading cell size used when building navigation data iteratively.
The actual cell size used will be rounded using the NavigationDataChunkGridSize.
It's recommended to use a value as high as the hardware memory allows to load.]`
- `uint NavigationDataChunkGridSize [Size of the grid for navigation data chunk actors]`
- `UNavigationSystemConfig NavigationSystemConfig [Holds parameters for NavigationSystem's creation. Set to Null will result
    in NavigationSystem instance not being created for this world. Note that
    if set NavigationSystemConfigOverride will be used instead.]`
- `TSoftObjectPtr<UMaterialInterface> OverrideBaseMaterial [If set overrides the project-wide base material used for Proxy Materials]`
- `int PackedLightAndShadowMapTextureSize [Maximum size of textures for packed light and shadow maps]`
- `TSubclassOf<UPhysicsCollisionHandler> PhysicsCollisionHandlerClass [optional level specific collision handler]`
- `EVisibilityAggressiveness VisibilityAggressiveness [Determines how aggressive precomputed visibility should be.
More aggressive settings cull more objects but also cause more visibility errors like popping.]`
- `int VisibilityCellSize [World space size of precomputed visibility cells in x and y.
Smaller sizes produce more effective occlusion culling at the cost of increased runtime memory usage and lighting build times.]`
- `float32 VolumetricLightmapLoadingRange [Range in which volumetric lightmaps will be loaded.]`
- `UWorldPartition WorldPartition []`
- `float32 WorldToMeters [scale of 1uu to 1m in real world measurements, for HMD and other physically tracked devices (e.g. 1uu = 1cm would be 100.0)]`
- `bool bEnableAISystem [if set to false AI system will not get created. Use it to disable all AI-related activity on a map]`
- `bool bEnableNavigationSystem`
- `bool bEnableWorldBoundsChecks [If true, enables CheckStillInWorld checks]`
- `bool bEnableWorldComposition [Enables tools for composing a tiled world.
Level has to be saved and all sub-levels removed before enabling this option.]`
- `bool bEnableWorldOriginRebasing [World origin will shift to a camera position when camera goes far away from current origin]`
- `bool bForceNoPrecomputedLighting [Whether to force lightmaps and other precomputed lighting to not be created even when the engine thinks they are needed.
This is useful for improving iteration in levels with fully dynamic lighting and shadowing.
Note that any lighting and shadowing interactions that are usually precomputed will be lost if this is enabled.]`
- `bool bForceVolumetricLightmapsOnly [Force precomputed lighting to only use VolumetricLightmaps.]`
- `bool bGenerateSingleClusterForLevel [If set to true, all eligible actors in this level will be added to a single cluster representing the entire level (used for small sublevels)]`
- `bool bGlobalGravitySet [If set to true we will use GlobalGravityZ instead of project setting DefaultGravityZ]`
- `bool bHideEnableStreamingWarning [if set to true, this hide the streaming disabled warning available in the viewport]`
- `bool bMinimizeBSPSections [Causes the BSP build to generate as few sections as possible.
This is useful when you need to reduce draw calls but can reduce texture streaming efficiency and effective lightmap resolution.
Note - changes require a rebuild to propagate.  Also, be sure to select all surfaces and make sure they all have the same flags to minimize section count.]`
- `bool bOverrideDefaultBroadphaseSettings`
- `bool bPlaceCellsOnlyAlongCameraTracks [Whether to place visibility cells only along camera tracks or only above shadow casting surfaces.]`
- `bool bPrecomputeVisibility [Whether to place visibility cells inside Precomputed Visibility Volumes and along camera tracks in this level.
Precomputing visibility reduces rendering thread time at the cost of some runtime memory and somewhat increased lighting build times.]`
- `bool bReuseAddressAndPort [Whether to configure the listening socket to allow reuse of the address and port. If this is true, be sure no other
servers can run on the same port, otherwise this can lead to undefined behavior since packets will go to two servers.]`
- `bool bShowInstancedFoliageGrid []`
- `bool bUseClientSideLevelStreamingVolumes [Enables client-side streaming volumes instead of server-side.
Expected usage scenario: server has all streaming levels always loaded, clients independently stream levels in/out based on streaming volumes.]`

---

