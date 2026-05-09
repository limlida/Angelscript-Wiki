### FCharacterCreatorVariationSet


A set of various appearance pieces that the appearance asset will use to generate a random appearance

**属性**:

- `TMap<FGameplayTag,FCharacterCreatorVariation_Mesh> Meshes [The mesh variations to choose from]`
- `TMap<FGameplayTag,FScalarVariation> ScalarValues [Global scalar values that morphs and meshes can reference]`
- `TMap<FGameplayTag,FVectorVariation> VectorValues [Global vector values that morphs and meshes can reference]`


**方法**:

- `FCharacterCreatorVariationSet& opAssign(FCharacterCreatorVariationSet Other)`

---

