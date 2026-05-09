### FLKFSNRTResults


Data representing the instantaneous loudness of a audio.

**属性**:

- `int Channel [The audio channel index which produced this result. If -1, then
the data was produced by combining all other audio channels]`
- `float32 Energy [The instantaneous, perceptually weighted energy.]`
- `float32 Loudness [The instantaneous, perceptually weighted loudness.]`
- `float32 ShortTermLoudness [The average loudness over a short term window of time.]`
- `float32 Timestamp [Time in seconds of the source audio which corresponds to the loudness measurements.]`


**方法**:

- `FLKFSNRTResults& opAssign(FLKFSNRTResults Other)`

---

