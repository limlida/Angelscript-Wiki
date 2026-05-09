### UFbxSkeletalMeshImportData


Import data and options used when importing a static mesh from fbx
Notes:
- Meta data ImportType i.e.       meta = (ImportType = "SkeletalMesh|GeoOnly")
    - SkeletalMesh : the property will be shown when importing skeletalmesh
    - GeoOnly: The property will be hide if we import skinning only
    - RigOnly: The property will be hide if we import geo only
    - RigAndGeo: The property will be show only if we import both skinning and geometry, it will be hiden otherwise

**属性**:

- `EFBXImportContentType ImportContentType [Filter the content we want to import from the incoming FBX skeletal mesh.]`
- `float32 MorphThresholdPosition [Threshold to compare vertex position equality when computing morph target deltas.]`
- `float32 ThresholdPosition [Threshold to compare vertex position equality.]`
- `float32 ThresholdTangentNormal [Threshold to compare normal, tangent or bi-normal equality.]`
- `float32 ThresholdUV [Threshold to compare UV equality.]`
- `EVertexColorImportOption VertexColorImportOption [Specify how vertex colors should be imported]`
- `FColor VertexOverrideColor [Specify override color in the case that VertexColorImportOption is set to Override]`
- `bool bImportMeshesInBoneHierarchy [If checked, meshes nested in bone hierarchies will be imported instead of being converted to bones.]`
- `bool bImportMorphTargets [If enabled, creates Unreal morph objects for the imported meshes]`
- `bool bImportVertexAttributes [If enabled, creates a named vertex attribute for each single-channel weight map of the imported mesh.]`
- `bool bKeepSectionsSeparate [If checked, sections with matching materials are kept separate and will not get combined.]`
- `bool bPreserveSmoothingGroups [If checked, triangles with non-matching smoothing groups will be physically split.]`
- `bool bUpdateSkeletonReferencePose [If enabled, update the Skeleton (of the mesh being imported)'s reference pose.]`
- `bool bUseT0AsRefPose [Enable this option to use frame 0 as reference pose]`

---

