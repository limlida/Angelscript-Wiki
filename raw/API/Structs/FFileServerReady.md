### FFileServerReady


Implements a message that is published by file servers when they're ready to accept connections.

**属性**:

- `TArray<FString> AddressList [Holds the list of IP addresses that the file server is listening on.]`
- `FGuid InstanceId [Holds the file server's application identifier.]`


**方法**:

- `FFileServerReady& opAssign(FFileServerReady Other)`

---

