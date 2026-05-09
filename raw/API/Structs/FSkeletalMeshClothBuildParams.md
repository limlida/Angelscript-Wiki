### FSkeletalMeshClothBuildParams


Struct holding parameters needed when creating a new clothing asset or sub asset (LOD)

**属性**:

- `FString AssetName [Name of the clothing asset]`
- `int LodIndex [LOD to extract the section from]`
- `TSoftObjectPtr<UPhysicsAsset> PhysicsAsset [Physics asset to extract collisions from, note this will only extract spheres and Sphyls, as that is what the simulation supports.]`
- `int SourceSection [Section within the specified LOD to extract]`
- `TWeakObjectPtr<UClothingAssetBase> TargetAsset [Target asset when importing LODs]`
- `int TargetLod [Target LOD to import to when importing LODs]`
- `bool bRemapParameters [If reimporting, this will map the old LOD parameters to the new LOD mesh.
If adding a new LOD this will map the parameters from the preceeding LOD.]`
- `bool bRemoveFromMesh [Whether or not to leave this section behind (if driving a mesh with itself). Enable this if driving a high poly mesh with a low poly]`


**方法**:

- `FSkeletalMeshClothBuildParams& opAssign(FSkeletalMeshClothBuildParams Other)`

---

