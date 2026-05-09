### FSoundSubmixSendInfoBase


Common set of settings that are uses as submix sends.

**属性**:

- `FRuntimeFloatCurve CustomSendLevelCurve [The custom send curve to use for distance-based send level. (0.0-1.0 on the curve's X-axis maps to Min/Max Send Distance)]`
- `bool DisableManualSendClamp [Whether to disable the internal 0-1 clamp for Manual Send Level control]`
- `float32 MaxSendDistance [The distance at which to stop mapping between Min/Max Send Level
Distances GREATER than this will result in a clamped Max Send Level]`
- `float32 MaxSendLevel [The amount to send to the Submix when sound is located at a distance greater than or equal to value specified in the Max Send Distance]`
- `float32 MinSendDistance [The distance at which to start mapping between to Min/Max Send Level
Distances LESS than this will result in a clamped Min Send Level]`
- `float32 MinSendLevel [The amount to send to the Submix when sound is located at a distance less than or equal to value specified in the Min Send Distance]`
- `float32 SendLevel [Manually set the amount of audio to send]`
- `ESendLevelControlMethod SendLevelControlMethod [Manual: Use Send Level only
Linear: Interpolate between Min and Max Send Levels based on listener distance (between Min/Max Send Distance)
Custom Curve: Use the float curve to map Send Level to distance (0.0-1.0 on curve maps to Min/Max Send Distance)]`
- `USoundSubmixBase SoundSubmix [The Submix to send the audio to]`


**方法**:

- `FSoundSubmixSendInfoBase& opAssign(FSoundSubmixSendInfoBase Other)`

---

