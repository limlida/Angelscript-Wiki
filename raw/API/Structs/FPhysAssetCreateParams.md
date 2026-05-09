### FPhysAssetCreateParams


Parameters for PhysicsAsset creation

**属性**:

- `EAngularConstraintMotion AngularConstraintMode [The type of angular constraint to create between bodies]`
- `EPhysAssetFitGeomType GeomType [The geometry type that should be used when creating bodies]`
- `int HullCount [When creating multiple convex hulls, the maximum number that will be created.]`
- `int LatticeResolution [When creating skinned level sets, the embedding grid resolution to use]`
- `int LevelSetResolution [When creating level sets, the grid resolution to use]`
- `int LodIndex [The LOD index use to create the physics asset.]`
- `int MaxHullVerts [When creating convex hulls, the maximum verts that should be created]`
- `float32 MinBoneSize [Bones that are shorter than this value will be ignored for body creation]`
- `float32 MinWeldSize [Bones that are smaller than this value will be merged together for body creation]`
- `EPhysAssetFitVertWeight VertWeight [How vertices are mapped to bones when approximating them with bodies]`
- `bool bAutoOrientToBone [Whether to automatically orient the created bodies to their corresponding bones]`
- `bool bBodyForAll [Forces creation of a body for each bone]`
- `bool bCreateConstraints [Whether to create constraints between adjacent created bodies]`
- `bool bDisableCollisionsByDefault [Whether to disable collision of body with other bodies on creation]`
- `bool bWalkPastSmall [Whether to skip small bones entirely (rather than merge them with adjacent bones)]`


**方法**:

- `FPhysAssetCreateParams& opAssign(FPhysAssetCreateParams Other)`

---

