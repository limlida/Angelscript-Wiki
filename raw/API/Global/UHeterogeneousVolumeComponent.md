### UHeterogeneousVolumeComponent


A component that represents a heterogeneous volume.

**属性**:

- `float32 EndFrame []`
- `float32 Frame`
- `float32 FrameRate []`
- `FTransform FrameTransform []`
- `float32 LightingDownsampleFactor []`
- `float32 ShadowBiasFactor []`
- `float32 ShadowStepFactor []`
- `float32 StartFrame []`
- `float32 StepFactor []`
- `float32 StreamingMipBias [Bias to apply to the calculated mip level to stream at. This property essentially influences the distance from the
volume at which certain mip levels are no longer requested. Higher values result in earlier mip level transitions.]`
- `FIntVector VolumeResolution`
- `bool bIssueBlockingRequests`
- `bool bLooping`
- `bool bPivotAtCentroid`
- `bool bPlaying`


**方法**:

- `Play()`
- `SetEndFrame(float32 NewValue)`
- `SetFrame(float32 NewValue)`
- `SetFrameRate(float32 NewValue)`
- `SetLooping(bool NewValue)`
- `SetPlaying(bool NewValue)`
- `SetStartFrame(float32 NewValue)`
- `SetStreamingMipBias(int NewValue)`
- `SetVolumeResolution(FIntVector NewValue)`

---

