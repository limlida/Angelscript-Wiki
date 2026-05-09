### USoundNodeEnveloper


Allows manipulation of volume and pitch over a set time period

**属性**:

- `float32 DurationAfterLoop [The time in seconds it takes the evelope to fade out after the last loop is completed.]`
- `int LoopCount [The number of times the envelope should loop if looping is enabled and the envelope is not set to loop indefinitely.]`
- `float32 LoopEnd [The time in seconds where the envelope's loop ends.]`
- `float32 LoopStart [The time in seconds where the envelope's loop begins.]`
- `FRuntimeFloatCurve PitchCurve [The distribution defining the pitch envelope.]`
- `float32 PitchMax [The upper bound of pitch (1.0 is no change)]`
- `float32 PitchMin [The lower bound of pitch (1.0 is no change)]`
- `FRuntimeFloatCurve VolumeCurve [The distribution defining the volume envelope.]`
- `float32 VolumeMax [The upper bound of volume (1.0 is no change)]`
- `float32 VolumeMin [The lower bound of volume (1.0 is no change)]`
- `bool bLoop [If enabled, the envelope will loop using the loop settings.]`
- `bool bLoopIndefinitely [If enabled, the envelope will continue to loop indefenitely regardless of the Loop Count value.]`

---

