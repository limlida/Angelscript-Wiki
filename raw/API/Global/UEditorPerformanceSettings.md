### UEditorPerformanceSettings


Settings to tweak the performance of the editor

**属性**:

- `float32 ManualScreenPercentage [Editor viewport screen percentage]`
- `int MaxViewportRenderingResolution []`
- `int MinViewportRenderingResolution []`
- `EEditorUserScreenPercentageModeOverride MobileScreenPercentageMode []`
- `EEditorUserScreenPercentageModeOverride NonRealtimeScreenPercentageMode []`
- `TArray<FName> NotifyList [Specific measurements to notify]`
- `EEditorUserScreenPercentageModeOverride PathTracerScreenPercentageMode []`
- `EEditorUserScreenPercentageModeOverride RealtimeScreenPercentageMode []`
- `EEditorUserScreenPercentageModeOverride VRScreenPercentageMode []`
- `bool bDisableRealtimeViewportsInRemoteSessions [Disables realtime viewports by default when connected via a remote session]`
- `bool bDisplayHighDPIViewports [By default the editor will adjust scene scaling (quality) for high DPI in order to ensure consistent performance with very large render targets.
Enabling this will disable automatic adjusting and render at the full resolution of the viewport]`
- `bool bEnableEditorPeformanceTool [Whether to enable Editor Perf Tool Completely]`
- `bool bEnableExperimentalFeatures [Whether to enable Editor Perf Tool Experimental Features]`
- `bool bEnableNotifications [Whether to enable Editor Perf Warnings]`
- `bool bEnableScalabilityWarningIndicator [When enabled, a warning will appear in the viewport when your editors scalability settings are non-default and you may be viewing a low quality scene]`
- `bool bEnableSnapshots [Whether to create Insights Snapshots]`
- `bool bEnableTelemetry [Whether to enable Telemetry]`
- `bool bEnableVSync [Should VSync be enabled in editor?]`
- `bool bMonitorEditorPerformance [When turned on, the editor will constantly monitor performance and adjust scalability settings for you when performance drops (disabled in debug)]`
- `bool bOverrideManualScreenPercentage`
- `bool bOverrideMaxViewportRenderingResolution`
- `bool bOverrideMinViewportRenderingResolution`
- `bool bOverridePIEScreenPercentage`
- `bool bShowFrameRateAndMemory [When enabled, the application frame rate, memory and Unreal object count will be displayed in the main editor UI]`
- `bool bShowWarningsOnly [Whether to Show Warnings Only]`
- `bool bThrottleCPUWhenNotForeground [Lowers CPU usage when the editor is in the background and not the active application]`

---

