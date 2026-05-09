### FAutomationWorkerTestDataRequest


Implements a message that handles both storing and requesting ground truth data.
for the first time this test is run, it might need to store things, or get things.

**属性**:

- `FString DataName []`
- `FString DataPlatform []`
- `FString DataTestName []`
- `FString DataType [The category of the data, this is purely to bucket and separate the ground truth data we store into different directories.]`
- `FGuid InstanceId []`
- `FString JsonData []`


**方法**:

- `FAutomationWorkerTestDataRequest& opAssign(FAutomationWorkerTestDataRequest Other)`

---

