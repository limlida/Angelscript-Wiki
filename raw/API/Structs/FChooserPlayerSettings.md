### FChooserPlayerSettings


**属性**:

- `EAlphaBlendOption BlendOption [How the blend is applied over time to the bones. Common selections are linear, ease in, ease out, and ease in and out.]`
- `UBlendProfile BlendProfile [Set Blend Profiles (editable in the skeleton) to determine how the blending is distributed among your character's bones. It could be used to differentiate between upper body and lower body to blend timing.]`
- `float32 BlendTime`
- `FAnimCurveOverrideList CurveOverrides [List of curve values to set]`
- `float32 MinDeltaTimeToForceBlendTo [Experimental, this feature might be removed without warning, not for production use
the chooser player will continue playing an asset previously selected at time "PreviousStartTime", integrating it by the simulation "DeltaSeconds",
unless the current "StartTime" is far away "MinDeltaTimeToForceBlendTo" from "PreviousStartTime":
if |PreviousStartTime - StartTime| > MinDeltaTimeToForceBlendTo then bForceBlendTo = true and the chooser player will ask blend stack to blend to the same asset at a different "StartTime"]`
- `float32 PlaybackRate [playback rate modifier]`
- `float32 StartTime [Start offset when starting the Animation Asset]`
- `bool bForceBlendTo [Experimental, this feature might be removed without warning, not for production use]`
- `bool bForceLooping [Loop the animation asset, even if the asset is not set as looping]`
- `bool bMirror [Set this value to mirror animations - the MirrorDataTable must also be set on the AnimNode]`
- `bool bUseInertialBlend`


**方法**:

- `FChooserPlayerSettings& opAssign(FChooserPlayerSettings Other)`

---

