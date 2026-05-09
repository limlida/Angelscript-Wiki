### FSkeletalMeshOptimizationSettings


FSkeletalMeshOptimizationSettings - The settings used to optimize a skeletal mesh LOD.

**属性**:

- `int BaseLOD [Base LOD index to generate this LOD. By default, we generate from LOD 0]`
- `int MaxBonesPerVertex [Maximum number of bones that can be assigned to each vertex.]`
- `float32 MaxDeviationPercentage [If ReductionMethod equals MaxDeviation this value is the maximum deviation from the base mesh as a percentage of the bounding sphere.
In code, it ranges from [0, 1]. In the editor UI, it ranges from [0, 100]]`
- `uint MaxNumOfTriangles [The maximum number of triangles to retain]`
- `uint MaxNumOfTrianglesPercentage [The maximum number of triangles to retain when using percentage termination criterion.]`
- `uint MaxNumOfVerts [The maximum number of vertices to retain]`
- `uint MaxNumOfVertsPercentage [The maximum number of vertices to retain when using percentage termination criterion.]`
- `float32 NormalsThreshold [If the angle between two triangles are above this value, the normals will not be
      smooth over the edge between those two triangles. Set in degrees. This is only used when bRecalcNormals is set to true]`
- `float32 NumOfTrianglesPercentage [The percentage of triangles to retain as a ratio, e.g. 0.1 indicates 10 percent]`
- `float32 NumOfVertPercentage [The percentage of vertices to retain as a ratio, e.g. 0.1 indicates 10 percent]`
- `SkeletalMeshOptimizationType ReductionMethod [The method to use when optimizing the skeletal mesh LOD]`
- `SkeletalMeshOptimizationImportance ShadingImportance [How important shading quality is.]`
- `SkeletalMeshOptimizationImportance SilhouetteImportance [How important the shape of the geometry is.]`
- `SkeletalMeshOptimizationImportance SkinningImportance [How important skinning quality is.]`
- `SkeletalMeshTerminationCriterion TerminationCriterion [The method to use when optimizing the skeletal mesh LOD]`
- `SkeletalMeshOptimizationImportance TextureImportance [How important texture density is.]`
- `float32 VolumeImportance [Default value of 1 attempts to preserve volume.  Smaller values will loose volume by flattening curved surfaces, and larger values will accentuate curved surfaces.]`
- `float32 WeldingThreshold [The welding threshold distance. Vertices under this distance will be welded.]`
- `bool bEnforceBoneBoundaries [Penalize edge collapse between vertices that have different major bones.  This will help articulated segments like tongues but can lead to undesirable results under extreme simplification]`
- `bool bImproveTrianglesForCloth [Better distribution of triangles on 2d meshes, such as flat cloth, but at the cost of potentially worse UVs in those areas.  This generally has little or no effect for mesh regions that aren't laid out on a plane intersecting the origin such as the xy-plane. When this is disabled, the planar regions may simplify to fewer large triangles.]`
- `bool bLockColorBounaries [Disallow edge collapse when the vertices do not have a common color]`
- `bool bLockEdges [Preserve cuts in the mesh surface by locking vertices in place.  Increases the quality of the simplified mesh at edges at the cost of more triangles]`
- `bool bMergeCoincidentVertBones [If enabled this option make sure vertices that share the same location (e.g. UV boundaries) have the same bone weights. This can fix cracks when the characters animate.]`
- `bool bRecalcNormals [Whether Normal smoothing groups should be preserved. If true then Hard Edge Angle (NormalsThreshold) is used *]`
- `bool bRemapMorphTargets [Remap the morph targets from the base LOD onto the reduce LOD.]`


**方法**:

- `FSkeletalMeshOptimizationSettings& opAssign(FSkeletalMeshOptimizationSettings Other)`

---

