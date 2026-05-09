### URenderDocPluginSettings


**属性**:

- `int CaptureDelay [If > 0, RenderDoc will trigger the capture only after this amount of frames/seconds has passed.]`
- `int CaptureFrameCount [If > 1, the RenderDoc capture will encompass more than a single frame. Note: this implies that all activity in all viewports and editor windows will be captured (i.e. same as CaptureAllActivity)]`
- `FString RenderDocBinaryPath [Path to the main RenderDoc executable to use.]`
- `bool bAutoAttach [If checked, then RenderDoc will attach on startup. Otherwise the command line argument '-AttachRenderDoc' is required.]`
- `bool bCaptureAllActivity [If checked, RenderDoc will capture all activity in all viewports and editor windows for the entire frame instead of only the current viewport.]`
- `bool bCaptureAllCallstacks [If checked, RenderDoc will capture callstacks for all API calls.]`
- `bool bCaptureDelayInSeconds [If checked, the capture delay's unit will be in seconds instead of frames.]`
- `bool bEnableRenderDocCrashHandler [If checked, the RenderDoc crash handler will be used if a crash occurs (Only use this if you know the problem is with RenderDoc and you want to notify the RenderDoc developers!).]`
- `bool bReferenceAllResources [If checked, RenderDoc will include all rendering resources in the capture, even those that have not been used during the frame. Please note that doing this will significantly increase capture size.]`
- `bool bSaveAllInitials [If checked, RenderDoc will always capture the initial state of all rendering resources even if they are not likely to be used during the frame. Please note that doing this will significantly increase capture size.]`
- `bool bShowHelpOnStartup [If checked, a help window will be shown on startup.]`

---

