### FPoseSearchDatabaseAnimationAsset


**属性**:

- `UObject AnimAsset []`
- `float32 BlendParamX [BlendParams used to sample this BlendSpace]`
- `float32 BlendParamY [BlendParams used to sample this BlendSpace]`
- `EPoseSearchMirrorOption MirrorOption [This allows users to set if this animation is original only (no mirrored data), original and mirrored, or only the mirrored version of this animation.
It requires the mirror table to be set up in the database Schema.]`
- `int NumberOfHorizontalSamples [Sets the number of horizontal samples in the blend space to pull the animation data coverage from. The larger the samples the more the data, but also the more memory and performance it takes.]`
- `int NumberOfVerticalSamples [Sets the number of vertical samples in the blend space to pull the animation data coverage from.The larger the samples the more the data, but also the more memory and performance it takes.]`
- `FFloatInterval SamplingRange [It allows users to set a time range to an individual blend space in the database.
This is effectively trimming the beginning and end of the animation in the database (not in the original blend space).
If set to [0, 0] it will be the entire frame range of the original blend space.]`
- `bool bDisableReselection [if bDisableReselection is true, poses from the same asset cannot be reselected. Useful to avoid jumping on frames on the same looping animations]`
- `bool bEnabled [This allows users to enable or exclude animations from this database. Useful for debugging.]`
- `bool bUseGridForSampling [When turned on, this will use the set grid samples of the blend space asset for sampling. This will override the Number of Horizontal/Vertical Samples.]`
- `bool bUseSingleSample [If true this BlendSpace will output a single segment in the database.]`


**方法**:

- `FPoseSearchDatabaseAnimationAsset& opAssign(FPoseSearchDatabaseAnimationAsset Other)`

---

