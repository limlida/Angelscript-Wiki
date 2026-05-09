### FAINoiseEvent


**属性**:

- `AActor Instigator [Actor triggering the sound.]`
- `float32 Loudness [Loudness modifier of the sound.
If MaxRange is non-zero, this modifies the range (by multiplication).
If there is no MaxRange, then if Square(DistanceToSound) <= Square(HearingRange * Loudness), the sound is heard, false otherwise.]`
- `float32 MaxRange [Max range at which the sound can be heard. Multiplied by Loudness.
A value of 0 indicates that there is no range limit, though listeners are still limited by their own hearing range.]`
- `FVector NoiseLocation [if not set Instigator's location will be used]`
- `FName Tag [Named identifier for the noise.]`


**方法**:

- `FAINoiseEvent& opAssign(FAINoiseEvent Other)`

---

