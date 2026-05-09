### UFbxSceneImportOptions


Fbx_AddToBlueprint UMETA(DisplayName = "Add to an existing Blueprint asset"),

**属性**:

- `EFBXSceneOptionsCreateHierarchyType HierarchyType [Choose if you want to generate the scene hierarchy with normal level actors, one actor with multiple components, or one blueprint asset with multiple components.]`
- `bool bBakePivotInVertex [- Experimental - If this option is true the inverse node pivot will be apply to the mesh vertices. The pivot from the DCC will then be the origin of the mesh. This option only work with static meshes.]`
- `bool bCreateContentFolderHierarchy [If checked, a folder's hierarchy will be created under the import asset path. All the created folders will match the actor hierarchy. In case there is more than one actor that links to an asset, the shared asset will be placed at the first actor's place.]`
- `bool bForceFrontXAxis [Whether to force the front axis to be align with X instead of -Y.]`
- `bool bImportAsDynamic [If checked, the mobility of all actors or components will be dynamic. If unchecked, they will be static.]`
- `bool bImportSkeletalMeshLODs [If enabled, creates LOD models for Unreal skeletal meshes from LODs in the import file; If not enabled, only the base skeletal mesh from the LOD group is imported.]`
- `bool bImportStaticMeshLODs [If enabled, creates LOD models for Unreal static meshes from LODs in the import file; If not enabled, only the base static mesh from the LOD group is imported.]`
- `bool bInvertNormalMaps [If enabled, this option will cause normal map Y (Green) values to be inverted when importing textures]`

---

