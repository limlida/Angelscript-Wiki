### FAutomationWorkerScreenImage


Implements a message that is sent in containing a screen shot run during performance test.

**属性**:

- `TArray<uint8> FrameTrace [The frame trace data.]`
- `FGuid InstanceId []`
- `FAutomationScreenshotMetadata Metadata []`
- `TArray<uint8> ScreenImage [The screen shot data.]`
- `FString ScreenShotName [The screen shot name.]`


**方法**:

- `FAutomationWorkerScreenImage& opAssign(FAutomationWorkerScreenImage Other)`

---

