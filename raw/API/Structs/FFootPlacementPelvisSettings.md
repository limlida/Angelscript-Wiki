### FFootPlacementPelvisSettings


**属性**:

- `EActorMovementCompensationMode ActorMovementCompensationMode [This is used to hold the Pelvis's interpolator in a fixed spot when the capsule moves up/down
If your camera is directly attached to the character with little to no smoothing, you may want this on ComponentSpace]`
- `FName DisablePelvisCurveName []`
- `float32 HeelLiftRatio [How much we prefer lifting the heel before dropping the hips to achieve the desired pose.
1 fully favors heel lift first.
0 fully favors pelvis drop first.]`
- `float32 HorizontalRebalancingWeight [How much we move the pelvis horizontally to re-balance the characters weight due to foot offsets.
A value of 0 will disable this effect.
Higher values may move the mesh outside of the character's capsule]`
- `float32 LinearDamping []`
- `float32 LinearStiffness []`
- `float32 MaxOffset [Max vertical offset from the input pose for the Pelvis.
Reaching this limit means the feet may not reach their plant plane]`
- `float32 MaxOffsetHorizontal [Max horizontal foot adjustment we consider to lower the hips
This can be used to prevent the hips from dropping too low when the feet are locked
Exceeding this value will first attempt to roll the planted feet, and then slide]`
- `EPelvisHeightMode PelvisHeightMode []`
- `bool bDisablePelvisOffsetInAir []`
- `bool bEnableInterpolation []`


**方法**:

- `FFootPlacementPelvisSettings& opAssign(FFootPlacementPelvisSettings Other)`

---

