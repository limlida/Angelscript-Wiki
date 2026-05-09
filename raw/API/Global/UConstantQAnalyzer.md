### UConstantQAnalyzer


UConstantQAnalyzer

UConstantQAnalyzer calculates the temporal evolution of constant q transform for a given
audio bus in real-time. ConstantQ is available for individual channels or the overall audio bus.

**属性**:

- `FOnConstantQResults OnConstantQResults [Delegate to receive all Spectrum results, per-channel, since last delegate call. If bDownmixToMono setting is true, results will be in channel index 0.]`
- `FOnLatestConstantQResults OnLatestConstantQResults [Delegate to receive the latest per-channel Spectrum results. If bDownmixToMono setting is true, results will be in channel index 0.]`
- `UConstantQSettings Settings [The settings for the audio analyzer.]`


**方法**:

- `GetCenterFrequencies(TArray<float32>& OutCenterFrequencies)`
- `int GetNumCenterFrequencies() const`

---

