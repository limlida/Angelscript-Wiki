### ULKFSSettings


ULKFSSettings

Settings for a ULKFSAnalyzer.

**属性**:

- `float32 AnalysisPeriod [Number of seconds between loudness measurements. The standard is 0.1 seconds.]`
- `float32 AnalysisWindowDuration [Number of seconds of audio analyzed for each loudness measurements. The standard is 0.4 seconds.]`
- `float32 IntegratedLoudnessAnalysisPeriod [Number of seconds between long term (integrated and gated) loudness updates.  The standard is 1.0 seconds.]`
- `float32 IntegratedLoudnessDuration [Duration of audio analyzed for long term (integrated and gated) loudness. The real time LKFS analyzer
performs integrated loudness duration over a large window instead of performing calculations over
the entire audio stream.]`
- `float32 ShortTermLoudnessDuration [Duration of audio analyzed for short term loudness. The standard is 3.0 seconds.]`

---

