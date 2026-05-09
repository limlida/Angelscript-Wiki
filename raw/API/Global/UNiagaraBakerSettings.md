### UNiagaraBakerSettings


**属性**:

- `FName BakeQualityLevel [What quality level to use when baking the simulation, where None means use the current quality level.]`
- `FVector CameraViewportLocation []`
- `FRotator CameraViewportRotation []`
- `int CurrentCameraIndex [Active camera that we were saved with]`
- `float32 DurationSeconds [Duration in seconds to take the capture over.]`
- `FIntPoint FramesPerDimension [Number of frames in each dimension.]`
- `int FramesPerSecond [The frame rate to run the simulation at during capturing.
This is only used for the preview view and calculating the number of ticks to execute
as we capture the generated texture.]`
- `TArray<TObjectPtr<UNiagaraBakerOutput>> Outputs [Array of outputs for the baker to generate.]`
- `float32 StartSeconds [This is the start time of the simulation where we begin the capture.
I.e. 2.0 would mean the simulation warms up by 2 seconds before we begin capturing.]`
- `bool bLockToSimulationFrameRate [Locks the playback to the simulation frame rate, i.e. no multi-tick.]`
- `bool bPreviewLoopedOutput [Should we preview the baked looped simulation if it has been generated, or the full baked sim]`
- `bool bPreviewLooping [Should the preview playback as looping or not.]`
- `bool bRenderComponentOnly [Should we render just the component or the whole scene.]`

---

