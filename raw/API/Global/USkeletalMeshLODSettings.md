### USkeletalMeshLODSettings


**属性**:

- `FPerPlatformBool DisableBelowMinLodStripping [When true LODs below MinLod will not be stripped during cook.]`
- `TArray<FSkeletalMeshLODGroupSettings> LODGroups []`
- `FPerPlatformInt MaxNumOptionalLODs [Default maximum number of optional LODs for meshes in this group (currently, need to be either 0 or > num of LODs below MinLod)]`
- `FPerPlatformInt MaxNumStreamedLODs [Default maximum number of streamed LODs for meshes in this group]`
- `FPerPlatformInt MinLod [Minimum LOD to render. Can be overridden per mesh as well as set here for all mesh instances]`
- `FPerQualityLevelInt MinQualityLevelLod [Minimum Quality Level LOD to render. Can be overridden per mesh as well as set here for all mesh instances]`
- `bool bOverrideLODStreamingSettings [Whether meshes in this group override default LOD streaming settings.]`
- `FPerPlatformBool bSupportLODStreaming [Whether meshes in this group stream LODs by default]`

---

