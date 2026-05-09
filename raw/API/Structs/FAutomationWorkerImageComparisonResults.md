### FAutomationWorkerImageComparisonResults


Implements a message that is sent in containing a screen shot run during performance test.

**属性**:

- `FString ErrorMessage []`
- `float GlobalDifference []`
- `FString IncomingFilePath []`
- `FGuid InstanceId []`
- `float MaxLocalDifference []`
- `FString ReportApprovedFilePath []`
- `FString ReportComparisonFilePath []`
- `FString ReportIncomingFilePath []`
- `FString ScreenshotPath [The path of the screenshot.]`
- `FGuid UniqueId [The unique id for the comparison.]`
- `bool bNew [Was this a new image we've never seen before and have no ground truth for?]`
- `bool bSimilar [Were the images similar?  If they're not you should log an error.]`


**方法**:

- `FAutomationWorkerImageComparisonResults& opAssign(FAutomationWorkerImageComparisonResults Other)`

---

