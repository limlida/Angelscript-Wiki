### FTraceControlStatus


Response for FTraceControlStatusPing. Meant to be fairly high
frequency.

**属性**:

- `uint64 BytesSent []`
- `uint64 BytesTraced []`
- `uint CacheAllocated []`
- `uint CacheUsed []`
- `uint CacheWaste []`
- `FString Endpoint []`
- `uint64 MemoryUsed []`
- `FGuid SessionGuid []`
- `FDateTime StatusTimestamp []`
- `FGuid TraceGuid []`
- `uint8 TraceSystemStatus []`
- `bool bAreStatNamedEventsEnabled []`
- `bool bIsPaused []`
- `bool bIsTracing []`


**方法**:

- `FTraceControlStatus& opAssign(FTraceControlStatus Other)`

---

