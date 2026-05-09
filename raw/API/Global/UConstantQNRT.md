### UConstantQNRT


UConstantQNRT

UConstantQNRT calculates the temporal evolution of constant q transform for a given
sound. ConstantQ is available for individual channels or the overall sound asset.

**属性**:

- `UConstantQNRTSettings Settings [The settings for the audio analyzer.]`


**方法**:

- `GetChannelConstantQAtTime(float32 InSeconds, int InChannel, TArray<float32>& OutConstantQ) const`  
  Get a specific channel cqt of the analyzed sound at a given time.
- `GetNormalizedChannelConstantQAtTime(float32 InSeconds, int InChannel, TArray<float32>& OutConstantQ) const`  
  Get a specific channel cqt of the analyzed sound at a given time.

---

