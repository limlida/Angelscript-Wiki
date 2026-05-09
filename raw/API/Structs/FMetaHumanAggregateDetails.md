### FMetaHumanAggregateDetails


Details about the assets contained in a MetaHuman Package

**属性**:

- `int CardMeshCount [Number of card assets]`
- `FIntVector2 CardMeshTextureResolution [Texture Atlas resolution]`
- `int CardMeshVertices [Number of verts]`
- `FString EngineVersion [UE Version asset was packaged with]`
- `int IncludedLods [Which LODs are included for this item]`
- `int Lod0VertCount [Vert Count for LOD0 (if single item in listing)]`
- `int NumMaterials [Number of material or material instances]`
- `int NumSubstrateMaterials [Number of Substrate-only materials in this package]`
- `int NumUniqueCharacters [How many Characters are included in this listing]`
- `int NumUniqueClothingItems [Number of clothing items]`
- `int NumUniqueGrooms [Number of grooms]`
- `int NumVirtualTextures [Number of Virtual Textures in this package]`
- `TArray<EMetaHumanQualityLevel> PlatformsIncluded [Cinematic and/or Optimized]`
- `int StrandsCount [Number of curves]`
- `int StrandsPointCount [Number of CVs]`
- `int VolumeMeshCount [Number of meshes]`
- `FIntVector2 VolumeMeshTextureResolution [Textures resolution]`
- `int VolumeMeshVertices [Number of verts]`
- `bool bContainsClothing [Does this character come with clothing]`
- `bool bContainsGrooms [Does this character contain one or more grooms]`
- `bool bHasClothingMask [Clothing has a mask for hidden face removal in UEMHC]`
- `bool bHasLods [LODs available]`
- `bool bIsEditableCharacter [Is this a character a user can open up in UEMHC and edit?]`
- `bool bPhysics [Simulation enabled]`
- `bool bResizesWithBlendableBodies [Clothing will resize to blendable bodies in UEMHC]`


**方法**:

- `FMetaHumanAggregateDetails& opAssign(FMetaHumanAggregateDetails Other)`

---

