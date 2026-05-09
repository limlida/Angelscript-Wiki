### FXRHandTrackingState


**属性**:

- `FGuid ApplicationInstanceID []`
- `FName DeviceName []`
- `EControllerHand Hand []`
- `TArray<FVector> HandKeyLocations [The indices of this array are the values of EHandKeypoint (Palm, Wrist, ThumbMetacarpal, etc).]`
- `TArray<float32> HandKeyRadii [The indices of this array are the values of EHandKeypoint (Palm, Wrist, ThumbMetacarpal, etc).]`
- `TArray<FQuat> HandKeyRotations [The indices of this array are the values of EHandKeypoint (Palm, Wrist, ThumbMetacarpal, etc).]`
- `ETrackingStatus TrackingStatus []`
- `EXRSpaceType XRSpaceType []`
- `bool bValid [The state is valid if poses have ever been provided.]`


**方法**:

- `FXRHandTrackingState& opAssign(FXRHandTrackingState Other)`

---

