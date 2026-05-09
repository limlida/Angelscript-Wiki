### FMoverPredictTrajectoryParams


FMoverPredictTrajectoryParams: parameter block for querying future trajectory samples based on a starting state
See UMoverComponent::GetPredictedTrajectory

**属性**:

- `int NumPredictionSamples [How many samples to predict into the future, including the first sample, which is always a snapshot of the
starting state with 0 accumulated time.]`
- `TArray<FMoverInputCmdContext> OptionalInputCmds [Optional input cmds to use, one per sample. If none are specified, prediction will begin with last-used inputs.
If too few are specified for the number of samples, the final input in the array will be used repeatedly to cover remaining samples.]`
- `TOptional<FMoverAuxStateContext> OptionalStartAuxState [Optional starting aux state. If not set, prediction will begin from the current state.]`
- `TOptional<FMoverSyncState> OptionalStartSyncState [Optional starting sync state. If not set, prediction will begin from the current state.]`
- `float32 SecondsPerSample [How much time between predicted samples]`
- `bool bDisableGravity [If true, gravity will not taken into account during prediction]`
- `bool bUseVisualComponentRoot [If true, samples are based on the visual component transform, rather than the 'updated' movement root.
Typically, this is a mesh with its component location at the bottom of the collision primitive.
If false, samples are from the movement root.]`


**方法**:

- `FMoverPredictTrajectoryParams& opAssign(FMoverPredictTrajectoryParams Other)`

---

