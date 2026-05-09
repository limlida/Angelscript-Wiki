### ANoPawnPlayerController


A specialized player controller used by server connections that are created using NMT_JoinNoPawn and NMT_JoinNoPawnSplit.

**方法**:

- `ServerEnableReplicationToConnection(bool bEnable)`  
  When disabled, any connection using this player controller won't replicate actors down to it's client. Enabled by default.
- `ServerSetViewTargetPosition(FVector ViewTargetPos)`  
  Set a view target position for use in replication relevancy.

---

