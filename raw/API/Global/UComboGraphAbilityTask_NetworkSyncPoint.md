### UComboGraphAbilityTask_NetworkSyncPoint


Task for providing a generic sync point for client server (one can wait for a signal from the other)

Originally forked from engine to fix an issue with 5.1.0 (https://github.com/EpicGames/UnrealEngine/commit/49b4d85a967a1093f188334d9b1be65805ec00e8)

The only difference now with UAbilityTask_NetworkSyncPoint is the addition of OnSyncDelegate to register a delegate when used
in C++ tasks (in StartGraph or PlayMontage combo graph tasks).

**属性**:

- `FComboGraphNetworkSyncDelegate OnSync`

---

