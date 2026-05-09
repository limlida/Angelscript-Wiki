### UAsyncPhysicsInputComponent


**方法**:

- `const UAsyncPhysicsData GetDataToConsume() const`  
  Get the async physics data to execute logic off of. This data should not be modified and will NOT make its way back. Should be called from async tick
- `UAsyncPhysicsData GetDataToWrite() const`  
  Get the async physics data to write to. This data will make its way to the async physics tick on client and server. Should not be called from async tick
- `ServerRPCBufferInput(UAsyncPhysicsData AsyncPhysicsData)`

---

