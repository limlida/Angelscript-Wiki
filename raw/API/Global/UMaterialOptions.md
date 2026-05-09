### UMaterialOptions


Options object to define what and how a material should be baked out

**属性**:

- `TArray<int> LODIndices [LOD indices for which the materials should be baked out]`
- `TArray<FPropertyEntry> Properties [Properties which are supposed to be baked out for the material(s)]`
- `int TextureCoordinateIndex [Specific texture coordinate which should be used to while baking out material properties as the positions stream]`
- `FIntPoint TextureSize [Size of the final texture(s) containing the baked out property data]`
- `bool bUseMeshData [Determines whether to not allow usage of the source mesh data while baking out material properties]`
- `bool bUseSpecificUVIndex [Flag whether or not the value of TextureCoordinateIndex should be used while baking out material properties]`

---

