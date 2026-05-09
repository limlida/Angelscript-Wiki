### FAutomationWorkerFindWorkersResponse


Implements a message that is sent in response to FAutomationWorkerFindWorkers.

**属性**:

- `FString CPUModelName [Holds the name of the CPU model.]`
- `FString DeviceName [Holds the name of the device that the worker is running on.]`
- `FString GPUName [Holds the name of the GPU.]`
- `FGuid InstanceId []`
- `FString InstanceName [Holds the name of the worker's application instance.]`
- `FString ModelName [Holds the name of the device model.]`
- `FString OSVersionName [Holds the name of the operating system version.]`
- `FString Platform [Holds the name of the platform that the worker is running on.]`
- `uint RAMInGB [Holds the amount of RAM this device has in gigabytes.]`
- `FString RHIName [Holds the name of the current RHI.]`
- `FString RenderModeName [Holds the name of the current render mode.]`
- `FGuid SessionId [Holds the worker's application session identifier.]`


**方法**:

- `FAutomationWorkerFindWorkersResponse& opAssign(FAutomationWorkerFindWorkersResponse Other)`

---

