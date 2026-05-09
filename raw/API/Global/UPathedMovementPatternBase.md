### UPathedMovementPatternBase


**属性**:

- `UCurveFloat CustomEasingCurve [If using a custom ease, this is the curve that will be used. If blank, will fall back to standard linear interpolation.]`
- `EAlphaBlendOption Easing [The kind of easing to apply when traveling along the path]`
- `float32 EndAtPathProgress [The overall path progress when this pattern should complete, where 0 is the start of the path and 1 is the end. Must be greater than StartAtProgress.]`
- `int NumLoopsPerPath [The number of loops to complete within the active span of this pattern (i.e. between StartAtProgress and EndAtProgress)
on a single run along the full aggregate path. Setting to 0 effectively disables this pattern.]`
- `FColor PatternDebugDrawColor [The color used for debug draws of this pattern]`
- `EPathedPhysicsPlaybackBehavior PerLoopBehavior [Playback behavior per loop of this pattern]`
- `uint8 RotationMasks [Along which axes is this pattern disallowed from modifying the rotation of the updated component?]`
- `uint8 ScaleMasks [Along which axes is this pattern disallowed from modifying the scale of the updated component?]`
- `float32 StartAtPathProgress [The overall path progress when this pattern should begin, where 0 is the start of the path and 1 is the end. Must be less than EndAtProgress.]`
- `uint8 TranslationMasks [Along which axes is this pattern disallowed from modifying the translation/location of the updated component?]`
- `bool bDebugDrawPattern [True to draw debug lines for this specific pattern in editor views]`
- `bool bOrientComponentToPath [If true, the component will be rotated to face in the direction of this pattern's motion.
To have the component face in the direction of the aggregate path, enable this on all movement patterns.]`
- `bool bStartAfterPreviousPattern [If true, this pattern will not begin to take effect until the previous pattern has completed.
Note: If true and the previous pattern's EndAtPathProgress is 1, this pattern will never start.]`

---

