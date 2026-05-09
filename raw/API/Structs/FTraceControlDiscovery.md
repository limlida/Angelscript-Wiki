### FTraceControlDiscovery


Response for FTraceControlPing. A status message with additional
information about session instance and properties that doesn't change
over the course of the session lifetime.

**属性**:

- `uint64 BytesSent []`
- `uint64 BytesTraced []`
- `uint CacheAllocated []`
- `uint CacheUsed []`
- `uint CacheWaste []`
- `FString Endpoint []`
- `FGuid InstanceId []`
- `uint64 MemoryUsed []`
- `FGuid SessionGuid []`
- `FGuid SessionId []`
- `FDateTime StatusTimestamp []`
- `FGuid TraceGuid []`
- `uint8 TraceSystemStatus []`
- `bool bAreStatNamedEventsEnabled []`
- `bool bIsPaused []`
- `bool bIsTracing []`


**方法**:

- `FTraceControlDiscovery& opAssign(FTraceControlDiscovery Other)`

---

