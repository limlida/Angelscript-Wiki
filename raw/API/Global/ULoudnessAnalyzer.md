### ULoudnessAnalyzer


ULoudnessAnalyzer

ULoudnessAnalyzer calculates the temporal evolution of perceptual loudness for a given
audio bus in real-time. Loudness is available for individual channels or the overall audio bus. Normalized
loudness values convert the range to 0.0 to 1.0 where 0.0 is the noise floor and 1.0 is the
maximum loudness of the particular sound.

**属性**:

- `FOnLatestOverallLoudnessResults OnLatestOverallLoudnessResults [Delegate to receive the latest overall loudness results.]`
- `FOnLatestPerChannelLoudnessResults OnLatestPerChannelLoudnessResults [Delegate to receive the latest per-channel loudness results.]`
- `FOnOverallLoudnessResults OnOverallLoudnessResults [Delegate to receive all overall loudness results since last delegate call.]`
- `FOnPerChannelLoudnessResults OnPerChannelLoudnessResults [Delegate to receive all loudness results, per-channel, since last delegate call.]`
- `ULoudnessSettings Settings [The settings for the audio analyzer.]`

---

