### UAnimNotifyState_MotionWarping


AnimNotifyState used to define a motion warping window in the animation

**属性**:

- `URootMotionModifier RootMotionModifier [@TODO: Prevent notify callbacks and add comments explaining why we don't use those here.]`


**方法**:

- `URootMotionModifier AddRootMotionModifier(UMotionWarpingComponent MotionWarpingComp, const UAnimSequenceBase Animation, float StartTime, float EndTime) const`  
  Creates a root motion modifier from the config class defined in the notify
- `OnWarpBegin(UMotionWarpingComponent MotionWarpingComp, URootMotionModifier Modifier) const`
- `OnWarpEnd(UMotionWarpingComponent MotionWarpingComp, URootMotionModifier Modifier) const`
- `OnWarpUpdate(UMotionWarpingComponent MotionWarpingComp, URootMotionModifier Modifier) const`

---

