### UReplicationFilteringConfig


Object scope hysteresis support. Keep dynamically filtered out objects around for a specified amount of frames.
Configure behavior via hysteresis profiles that determine the frame timeout per class.
The filter config for a specific class can then mention the hysteresis profile in order to get the appropriate behavior.

Example:
[/Script/IrisCore.ReplicationFilteringConfig]
bEnableObjectScopeHysteresis=true
DefaultHysteresisFrameCount=4
HysteresisUpdateConnectionThrottling=4
!HysteresisProfiles=ClearArray
+FilterProfiles=(FilterProfileName=PawnFilterProfile, HysteresisFrameCount=30)

[/Script/ IrisCore.ObjectReplicationBridgeConfig]
+FilterConfigs=(ClassName=/Script/Engine.Pawn, DynamicFilterName=Spatial, FilterProfile=PawnFilterProfile)
---

