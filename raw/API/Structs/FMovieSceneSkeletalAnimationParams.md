### FMovieSceneSkeletalAnimationParams


**属性**:

- `UAnimSequenceBase Animation [The animation this section plays]`
- `FFrameNumber EndFrameOffset [The offset into the end of the animation clip]`
- `FFrameNumber FirstLoopStartFrameOffset [The offset into the beginning of the animation clip for the first loop of play.]`
- `UMirrorDataTable MirrorDataTable`
- `FMovieSceneTimeWarpVariant PlayRate [The playback rate of the animation clip]`
- `FName SlotName [The slot name to use for the animation]`
- `FFrameNumber StartFrameOffset [The offset into the beginning of the animation clip]`
- `ESwapRootBone SwapRootBone [If on the root bone transform will be swapped to the specified root]`
- `bool bForceCustomMode [If on animation sequence will always play when active even if the animation is controlled by a Blueprint or Anim Instance Class]`
- `bool bLinearPlaybackWhenScaled`
- `bool bReverse [Reverse the playback of the animation clip]`
- `bool bSkipAnimNotifiers [If on will skip sending animation notifies]`


**方法**:

- `FMovieSceneSkeletalAnimationParams& opAssign(FMovieSceneSkeletalAnimationParams Other)`

---

