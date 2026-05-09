### FNetworkPhysicsSettingsDefaultReplication


**属性**:

- `float32 MaxLinearHardSnapDistance [Overrides CVar: p.MaxLinearHardSnapDistance -- Hardsnap if distance between current position and extrapolated target position is larger than this value.]`
- `bool bCorrectConnectedBodies [Overrides CVar: p.DefaultReplication.CorrectConnectedBodies -- When true, transform corrections will also apply to any connected physics object.]`
- `bool bCorrectConnectedBodiesFriction [Overrides CVar: p.DefaultReplication.CorrectConnectedBodiesFriction -- When true, transform correction on any connected physics object will also recalculate their friction.]`
- `bool bHardsnapInPhysicsThread [Overrides CVar: p.DefaultReplication.Legacy.HardsnapInPT -- If default replication is used and it's running the legacy flow through Game Thread, allow hardsnapping to be performed on Physics Thread if async physics is enabled.]`
- `bool bOverrideCorrectConnectedBodies`
- `bool bOverrideCorrectConnectedBodiesFriction`
- `bool bOverrideDefaultLegacyHardsnapInPT`
- `bool bOverrideMaxLinearHardSnapDistance [Override properties]`


**方法**:

- `FNetworkPhysicsSettingsDefaultReplication& opAssign(FNetworkPhysicsSettingsDefaultReplication Other)`

---

