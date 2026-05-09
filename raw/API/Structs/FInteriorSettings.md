### FInteriorSettings


Struct encapsulating settings for interior areas.

**属性**:

- `float32 ExteriorLPF [The desired LPF frequency cutoff in hertz of sounds outside the volume when the player is inside the volume]`
- `float32 ExteriorLPFTime [The time over which to interpolate from the current LPF to the desired LPF of sounds outside the volume when the player enters the volume]`
- `float32 ExteriorTime [The time over which to interpolate from the current volume to the desired volume of sounds outside the volume when the player enters the volume]`
- `float32 ExteriorVolume [The desired volume of sounds outside the volume when the player is inside the volume]`
- `float32 InteriorLPF [The desired LPF frequency cutoff in hertz of sounds inside the volume when the player is outside the volume]`
- `float32 InteriorLPFTime [The time over which to interpolate from the current LPF to the desired LPF of sounds inside the volume when the player exits the volume]`
- `float32 InteriorTime [The time over which to interpolate from the current volume to the desired volume of sounds inside the volume when the player exits the volume]`
- `float32 InteriorVolume [The desired volume of sounds inside the volume when the player is outside the volume]`


**方法**:

- `FInteriorSettings& opAssign(FInteriorSettings Other)`

---

