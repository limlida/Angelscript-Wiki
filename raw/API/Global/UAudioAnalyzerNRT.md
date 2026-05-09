### UAudioAnalyzerNRT


UAudioAnalyzerNRT

UAudioAnalyzerNRT applies an analyzer to a sound using specific settings, stores the
results and exposes them via blueprints.

Subclasses of UAudioAnalyzerNRT must implement GetAnalyzerNRTFactoryName() to associate
the UAudioAnalyzerNRT with an IAudioAnalyzerNRTFactory implementation.

To support blueprint access, subclasses can implement UFUNCTIONs to expose the data
returned by GetResult().

**属性**:

- `float32 DurationInSeconds [The duration of the analyzed audio in seconds.]`
- `FOnAudioAnalyzerNRTAnalysisComplete OnAnalysisComplete [Delegate to receive all meter results, per-channel, since last delegate call.]`
- `USoundWave Sound [The USoundWave which is analyzed.]`


**方法**:

- `AnalyzeAudio()`  
  Performs the analaysis of the audio
- `SetSound(USoundWave InSound)`

---

