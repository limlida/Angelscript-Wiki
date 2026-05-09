### FLevelEditorPlayNetworkEmulationSettings


**属性**:

- `FString CurrentProfile [The profile name of the settings currently applied]`
- `NetworkEmulationTarget EmulationTarget []`
- `FNetworkEmulationPacketSettings InPackets [Settings that add latency and packet loss to all incoming packets]`
- `FNetworkEmulationPacketSettings OutPackets [Settings that add latency and packet loss to all outgoing packets]`
- `bool bIsNetworkEmulationEnabled [When true will apply the emulation settings when launching the game]`


**方法**:

- `FLevelEditorPlayNetworkEmulationSettings& opAssign(FLevelEditorPlayNetworkEmulationSettings Other)`

---

