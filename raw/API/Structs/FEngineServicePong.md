### FEngineServicePong


Implements a message for responding to a request to discover engine instances on the network.

**属性**:

- `FString CurrentLevel [Holds the name of the currently loaded level, if any.]`
- `int EngineVersion [Holds the engine version.]`
- `bool HasBegunPlay [Holds a flag indicating whether game play has begun.]`
- `FGuid InstanceId [Holds the instance identifier.]`
- `FString InstanceType [Holds the type of the engine instance.]`
- `FGuid SessionId [Holds the identifier of the session that the application belongs to.]`
- `float32 WorldTimeSeconds [Holds the time in seconds since the world was loaded.]`


**方法**:

- `FEngineServicePong& opAssign(FEngineServicePong Other)`

---

