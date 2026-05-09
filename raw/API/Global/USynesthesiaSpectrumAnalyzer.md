### USynesthesiaSpectrumAnalyzer


USynesthesiaSpectrumAnalysisAnalyzer

USynesthesiaSpectrumAnalysisAnalyzer calculates the current amplitude of an
audio bus in real-time.

**属性**:

- `FOnLatestSpectrumResults OnLatestSpectrumResults [Delegate to receive the latest per-channel Spectrum results. If bDownmixToMono setting is true, results will be in channel index 0.]`
- `FOnSpectrumResults OnSpectrumResults [Delegate to receive all Spectrum results, per-channel, since last delegate call. If bDownmixToMono setting is true, results will be in channel index 0.]`
- `USynesthesiaSpectrumAnalysisSettings Settings [The settings for the SynesthesiaSpectrumAnalysis audio analyzer.]`


**方法**:

- `GetCenterFrequencies(float32 InSampleRate, TArray<float32>& OutCenterFrequencies)`
- `int GetNumCenterFrequencies() const`

---

