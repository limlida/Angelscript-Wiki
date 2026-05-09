### FSubmixEffectDelaySettings


FSubmixEffectDelaySettings
UStruct used to define user-exposed params for use with your effect.

**属性**:

- `float32 DelayLength [Number of milliseconds of delay.  Caps at max delay at runtime.]`
- `float32 InterpolationTime [Number of milliseconds over which a tap will reach it's set length and gain. Smaller values are more responsive, while larger values will make pitching less dramatic.]`
- `float32 MaximumDelayLength [Maximum possible length for a delay, in milliseconds. Changing this at runtime will reset the effect.]`


**方法**:

- `FSubmixEffectDelaySettings& opAssign(FSubmixEffectDelaySettings Other)`

---

