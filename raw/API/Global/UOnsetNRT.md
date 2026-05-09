### UOnsetNRT


UOnsetNRT

UOnsetNRT calculates the temporal evolution of constant q transform for a given
sound. Onset is available for individual channels or the overall sound asset.

**属性**:

- `UOnsetNRTSettings Settings [The settings for the audio analyzer.]`


**方法**:

- `GetChannelOnsetsBetweenTimes(float32 InStartSeconds, float32 InEndSeconds, int InChannel, TArray<float32>& OutOnsetTimestamps, TArray<float32>& OutOnsetStrengths) const`  
  Returns onsets which occured between start and end timestamps.
- `GetNormalizedChannelOnsetsBetweenTimes(float32 InStartSeconds, float32 InEndSeconds, int InChannel, TArray<float32>& OutOnsetTimestamps, TArray<float32>& OutOnsetStrengths) const`  
  Get a specific channel cqt of the analyzed sound at a given time.

---

