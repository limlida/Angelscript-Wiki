### UAnimDataModel


The Model represents the source data for animations. It contains both bone animation data as well as animated curves.
They are currently only a sub-object of a AnimSequenceBase instance. The instance derives all runtime data from the source data.

**属性**:

- `TArray<FAnimatedBoneAttribute> AnimatedBoneAttributes [Container with all animated (bone) attribute data]`
- `TArray<FBoneAnimationTrack> BoneAnimationTracks [All individual bone animation tracks]`
- `FAnimationCurveData CurveData [Container with all animated curve data]`
- `FFrameRate FrameRate [Rate at which the animated data is sampled]`
- `FAnimDataModelModifiedDynamicEvent ModifiedEvent [Dynamic delegate event allows scripting to register to any broadcasted notify.]`
- `int NumberOfFrames [Total number of sampled animated frames]`
- `int NumberOfKeys [Total number of sampled animated keys]`
- `float32 PlayLength []`

---

