### UAnimatedSparseVolumeTextureController


Utility (blueprint) class for controlling SparseVolumeTexture playback.

**属性**:

- `float32 FrameRate []`
- `int MipLevel []`
- `USparseVolumeTexture SparseVolumeTexture []`
- `float32 Time []`
- `bool bBlockingStreamingRequests []`
- `bool bIsPlaying []`


**方法**:

- `USparseVolumeTextureFrame GetCurrentFrame()`
- `GetCurrentFramesForInterpolation(USparseVolumeTextureFrame& Frame0, USparseVolumeTextureFrame& Frame1, float32& LerpAlpha)`
- `float32 GetDuration()`
- `float32 GetFractionalFrameIndex()`
- `USparseVolumeTextureFrame GetFrameByIndex(int FrameIndex)`
- `Pause()`
- `Play()`
- `Stop()`
- `Update(float32 DeltaTime)`

---

