### FLiveLinkSkeletonStaticData


Static data for Animation purposes. Contains data about bones that shouldn't change every frame.

**属性**:

- `TArray<FName> BoneNames [Names of each bone in the skeleton]`
- `TArray<int> BoneParents [Parent Indices: For each bone it specifies the index of its parent]`
- `TArray<FName> PropertyNames [Names for each curve values that will be sent for each frame]`


**方法**:

- `FLiveLinkSkeletonStaticData& opAssign(FLiveLinkSkeletonStaticData Other)`

---

