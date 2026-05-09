### ULKFSNRT


ULKFSNRT

ULKFSNRT calculates the temporal evolution of perceptual loudness for a given
sound.

**属性**:

- `ULKFSNRTSettings Settings [The settings for the audio analyzer.]`


**方法**:

- `GetChannelLoudnessAtTime(float32 InSeconds, int InChannel, float32& OutLoudness) const`  
  Get a specific channel loudness of the analyzed sound at a given time.
- `float32 GetGatedLoudness() const`  
  Return the gated loudness for the combination of all audio channels.
- `float32 GetGatedLoudnessForChannel(int InChannel) const`  
  Return the gated loudness for a specific audio channel.
- `float32 GetIntegratedLoudness() const`  
  Return the integrated (average) loudness for the combination of all audio channels.
- `float32 GetIntegratedLoudnessForChannel(int InChannel) const`  
  Return the integrated (average) loudness for a specific audio channel.
- `GetLoudnessAtTime(float32 InSeconds, float32& OutLoudness) const`  
  Get the overall loudness of the analyzed sound at a given time.
- `TArray<FLKFSNRTResults> GetLoudnessData() const`  
  Return the entire array of loudness data for the combination of all audio channels.
- `FLKFSNRTResults GetLoudnessDataAtTime(float32 InSeconds) const`  
  Return the instantaneous loudness data for the combination of all audio channels at a specific time.
- `TArray<FLKFSNRTResults> GetLoudnessDataForChannel(int InChannel) const`  
  Return the entire array of loudness data for a specific audio channel.
- `FLKFSNRTResults GetLoudnessDataForChannelAtTime(float32 InSeconds, int InChannel) const`  
  Return the instantaneous loudness data for a specific time and audio channel.

---

