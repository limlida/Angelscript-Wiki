### FAutomationWorkerFindWorkers


Implements a message that is published to find automation workers.

**属性**:

- `int Changelist [Holds the change list number to find workers for.]`
- `FString GameName [The name of the game.]`
- `FGuid InstanceId []`
- `FString ProcessName [The name of the process.]`
- `FGuid SessionId [Holds the session identifier to find workers for.]`


**方法**:

- `FAutomationWorkerFindWorkers& opAssign(FAutomationWorkerFindWorkers Other)`

---

