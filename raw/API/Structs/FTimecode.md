### FTimecode


A timecode that stores time in HH:MM:SS format with the remainder of time represented by an integer frame count.
@note The full C++ class is located here: Engine\Source\Runtime\Core\Public\Misc\TimeCode.h

**属性**:

- `int Frames []`
- `int Hours []`
- `int Minutes []`
- `int Seconds []`
- `float32 Subframe []`
- `bool bDropFrameFormat [If true, this Timecode represents a Drop Frame timecode used to account for fractional frame rates in NTSC play rates.]`


**方法**:

- `FTimecode& opAssign(FTimecode Other)`

---

