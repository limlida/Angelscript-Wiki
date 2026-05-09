### FAutomationTestExcludeOptions


**属性**:

- `TSet<FName> Platforms [Options to target specific platform. No option means it should be applied to all platforms]`
- `TSet<FName> RHIs [Options to target specific RHI. No option means it should be applied to all RHIs]`
- `FName Reason [Reason to why the test is excluded]`
- `bool Warn [Should the Reason be reported as a warning in the log]`


**方法**:

- `FAutomationTestExcludeOptions& opAssign(FAutomationTestExcludeOptions Other)`

---

