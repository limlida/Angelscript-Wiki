### FPoseSearchDatabaseMultiAnimAsset


**属性**:

- `EPoseSearchMirrorOption MirrorOption [This allows users to set if this animation is original only (no mirrored data), original and mirrored, or only the mirrored version of this animation.
It requires the mirror table to be set up in the database Schema.]`
- `UMultiAnimAsset MultiAnimAsset []`
- `int NumberOfHorizontalSamples [Sets the number of horizontal samples in the blend spaces referenced by the UMultiAnimAsset to pull the animation data coverage from. The larger the samples the more the data, but also the more memory and performance it takes.]`
- `int NumberOfVerticalSamples [Sets the number of vertical samples for the blend spaces referenced by the UMultiAnimAsset to pull the animation data coverage from. The larger the samples the more the data, but also the more memory and performance it takes.]`
- `FFloatInterval SamplingRange [It allows users to set a time range to an individual UMultiAnimAsset in the database.
This is effectively trimming the beginning and end of the animation in the database (not in the original UMultiAnimAsset).
If set to [0, 0] it will be the entire frame range of the original UMultiAnimAsset.]`
- `bool bDisableReselection [if bDisableReselection is true, poses from the same asset cannot be reselected. Useful to avoid jumping on frames on the same looping animations]`
- `bool bEnabled [This allows users to enable or exclude animations from this database. Useful for debugging.]`


**方法**:

- `FPoseSearchDatabaseMultiAnimAsset& opAssign(FPoseSearchDatabaseMultiAnimAsset Other)`

---

