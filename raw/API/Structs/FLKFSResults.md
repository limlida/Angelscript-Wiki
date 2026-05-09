### FLKFSResults


Data representing the instantaneous loudness of a audio.

**属性**:

- `int Channel [The audio channel index which produced this result. If -1, then
the data was produced by combining all other audio channels]`
- `float32 Energy [The instantaneous, perceptually weighted energy relative to full scale.]`
- `float32 GatedLoudness [The average gated loudness over a long term window of time in dB.]`
- `float32 IntegratedLoudness [The average loudness over a long term window of time in dB.]`
- `float32 Loudness [The instantaneous, perceptually weighted loudness in dB.]`
- `float32 ShortTermLoudness [The average loudness over a short term window of time in dB.]`
- `float32 Timestamp [Time in seconds of the source audio which corresponds to the loudness measurements.]`


**方法**:

- `FLKFSResults& opAssign(FLKFSResults Other)`

---

