### UAnimSingleNodeInstance


**方法**:

- `UAnimationAsset GetAnimationAsset() const`  
  Get the currently used asset
- `float32 GetLength()`
- `const UMirrorDataTable GetMirrorDataTable()`
- `PlayAnim(bool bIsLooping = false, float32 InPlayRate = 1.000000, float32 InStartPosition = 0.000000)`  
  For AnimSequence specific *
- `SetAnimationAsset(UAnimationAsset NewAsset, bool bIsLooping = true, float32 InPlayRate = 1.000000)`  
  Set New Asset - calls InitializeAnimation, for now we need MeshComponent *
- `SetBlendSpacePosition(FVector InPosition)`
- `SetLooping(bool bIsLooping)`
- `SetMirrorDataTable(const UMirrorDataTable MirrorDataTable)`
- `SetPlaying(bool bIsPlaying)`
- `SetPlayRate(float32 InPlayRate)`
- `SetPosition(float32 InPosition, bool bFireNotifies = true)`
- `SetPositionWithPreviousTime(float32 InPosition, float32 InPreviousTime, bool bFireNotifies = true)`
- `SetPreviewCurveOverride(FName PoseName, float32 Value, bool bRemoveIfZero)`  
  Set pose value
- `SetReverse(bool bInReverse)`
- `StopAnim()`

---

