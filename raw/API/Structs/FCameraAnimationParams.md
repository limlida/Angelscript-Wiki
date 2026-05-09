### FCameraAnimationParams


Parameter struct for adding new camera animations to UCameraAnimationCameraModifier

**属性**:

- `float32 DurationOverride [Override the duration of the animation with a new duration (including blends)]`
- `float32 EaseInDuration [Ease-in duration in seconds]`
- `ECameraAnimationEasingType EaseInType [Ease-in function type]`
- `float32 EaseOutDuration [Ease-out duration in seconds]`
- `ECameraAnimationEasingType EaseOutType [Ease-out function type]`
- `float32 PlayRate [Time scale for playing the new camera animation]`
- `ECameraAnimationPlaySpace PlaySpace [The transform space to use for the new camera shake]`
- `float32 Scale [Global scale to use for the new camera animation]`
- `int StartOffset [Offset, in frames, into the animation to start at]`
- `FRotator UserPlaySpaceRot [User space to use when PlaySpace is UserDefined]`
- `bool bLoop [Whether the camera animation should loop]`
- `bool bRandomStartTime [Whether the camera animation should have a random start time]`


**方法**:

- `FCameraAnimationParams& opAssign(FCameraAnimationParams Other)`

---

