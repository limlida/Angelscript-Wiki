### UGameNetworkManagerSettings


Holds the settings for the AGameNetworkManager class.

**属性**:

- `int BadPingThreshold [The point we determine the server is either delaying packets or has bad upstream.]`
- `float32 JoinInProgressStandbyWaitTime [The amount of time to wait before checking a connection for standby issues.]`
- `int MaxDynamicBandwidth [Maximum bandwidth dynamically set per connection.]`
- `int MinDynamicBandwidth [Minimum bandwidth dynamically set per connection.]`
- `float32 PercentForBadPing [The percentage of clients with bad ping before triggering the standby code.]`
- `float32 PercentMissingForRxStandby [The percentage of clients missing RX data before triggering the standby code.]`
- `float32 PercentMissingForTxStandby [The percentage of clients missing TX data before triggering the standby code.]`
- `float32 StandbyRxCheatTime [The amount of time without packets before triggering the cheat code.]`
- `float32 StandbyTxCheatTime [The amount of time without packets before triggering the cheat code.]`
- `int TotalNetBandwidth [Total available bandwidth for listen server, split dynamically across net connections.]`
- `bool bIsStandbyCheckingEnabled [Used to determine if checking for standby cheats should occur.]`

---

