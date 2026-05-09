### FPoseSearchDatabaseAnimMontage


An anim montage entry in a UPoseSearchDatabase.

**属性**:

- `UAnimMontage AnimMontage []`
- `EPoseSearchMirrorOption MirrorOption [This allows users to set if this animation is original only (no mirrored data), original and mirrored, or only the mirrored version of this animation.
It requires the mirror table to be set up in the database Schema.]`
- `FFloatInterval SamplingRange [It allows users to set a time range to an individual animation montage in the database.
This is effectively trimming the beginning and end of the animation in the database (not in the original montage).
If set to [0, 0] it will be the entire frame range of the original montage.
Set to readonly if this asset is synchronized via PoseSearchBranchIn notify state.
To edit its value update the associated PoseSearchBranchIn in AnimMontage]`
- `bool bDisableReselection [if bDisableReselection is true, poses from the same asset cannot be reselected. Useful to avoid jumping on frames on the same looping animations]`
- `bool bEnabled [This allows users to enable or exclude animations from this database. Useful for debugging.]`


**方法**:

- `FPoseSearchDatabaseAnimMontage& opAssign(FPoseSearchDatabaseAnimMontage Other)`

---

