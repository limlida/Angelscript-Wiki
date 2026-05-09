### FPoseSearchDatabaseAnimationAssetBase


**属性**:

- `EPoseSearchMirrorOption MirrorOption [This allows users to set if this animation is original only (no mirrored data), original and mirrored, or only the mirrored version of this animation.
It requires the mirror table to be set up in the database Schema.]`
- `bool bDisableReselection [if bDisableReselection is true, poses from the same asset cannot be reselected. Useful to avoid jumping on frames on the same looping animations]`
- `bool bEnabled [This allows users to enable or exclude animations from this database. Useful for debugging.]`


**方法**:

- `FPoseSearchDatabaseAnimationAssetBase& opAssign(FPoseSearchDatabaseAnimationAssetBase Other)`

---

