### FSkinWeightProfileInfo


Structure storing user facing properties, and is used to identify profiles at the SkeletalMesh level

**属性**:

- `FPerPlatformBool DefaultProfile [Whether or not this Profile should be considered the Default loaded for specific LODs rather than the original Skin Weights of the Skeletal Mesh]`
- `FPerPlatformInt DefaultProfileFromLODIndex [When DefaultProfile is set any LOD below this LOD Index will override the Skin Weights of the Skeletal Mesh with the Skin Weights from this Profile]`
- `FName Name [Name of the Skin Weight Profile]`


**方法**:

- `FSkinWeightProfileInfo& opAssign(FSkinWeightProfileInfo Other)`

---

