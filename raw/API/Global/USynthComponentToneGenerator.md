### USynthComponentToneGenerator


**属性**:

- `float32 AttenuationDbAtMaxRange [An attenuation, in decibels, to apply to the sound at max range.]`
- `FRuntimeFloatCurve DistanceAttenuationCurve [A distance attenuation curve to use to attenuate the audio.]`
- `FVector2D DistanceRange [A distance range over which to apply distance attenuation using the supplied curve.]`
- `float32 Frequency [The frequency (in hz) of the tone generator.]`
- `float32 Volume [The linear volume of the tone generator.]`


**方法**:

- `SetFrequency(float32 InFrequency)`  
  Sets the frequency of the tone generator
- `SetVolume(float32 InVolume)`  
  Sets the volume of the tone generator

---

