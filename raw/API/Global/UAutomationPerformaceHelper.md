### UAutomationPerformaceHelper


Class for use with functional tests which provides various performance measuring features.
Recording of basic, unintrusive performance stats.
Automatic captures using external CPU and GPU profilers.
Triggering and ending of writing full stats to a file.

**方法**:

- `BeginRecording(FString RecordName, float32 InGPUBudget, float32 InRenderThreadBudget, float32 InGameThreadBudget)`  
  Begins recording a new named performance stats record. We start by recording the baseline.
- `BeginRecordingBaseline(FString RecordName)`  
  Begins recording a new named performance stats record. We start by recording the baseline
- `BeginStatsFile(FString RecordName)`  
  Begins recording stats to a file.
- `EndRecording()`  
  Stops recording performance stats.
- `EndRecordingBaseline()`  
  Stops recording the baseline and moves to the main record.
- `EndStatsFile()`  
  Ends recording stats to a file.
- `bool IsCurrentRecordWithinGameThreadBudget() const`
- `bool IsCurrentRecordWithinGPUBudget() const`
- `bool IsCurrentRecordWithinRenderThreadBudget() const`
- `bool IsRecording() const`  
  Returns true if this stats tracker is currently recording performance stats.
- `OnAllTestsComplete()`  
  Does any final work needed as all tests are complete.
- `OnBeginTests()`  
  Does any init work across all tests..
- `Sample(float32 DeltaSeconds)`  
  Adds a sample to the stats counters for the current performance stats record.
- `StartCPUProfiling()`  
  Communicates with external profiler to being a CPU capture.
- `StopCPUProfiling()`  
  Communicates with external profiler to end a CPU capture.
- `Tick(float32 DeltaSeconds)`  
  Begin basic stat recording
- `TriggerGPUTraceIfRecordFallsBelowBudget()`  
  Will trigger a GPU trace next time the current test falls below GPU budget.
- `WriteLogFile(FString CaptureDir, FString CaptureExtension)`  
  Writes the current set of performance stats records to a csv file in the profiling directory. An additional directory and an extension override can also be used.

---

