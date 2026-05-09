### FNetworkPhysicsSettings


**属性**:

- `float32 EventSchedulingMinDelaySeconds [Minimum delay added, in seconds, when scheduling an event far enough in the future to ensure server and all peers that event at the same time
This value should be large enough to accommodate the largest network Round Trip Time, beyond which it is understood that the simulation will suffer from corrections]`
- `EPhysicsReplicationMode SimProxyRepMode [Override the EPhysicsReplicationMode for Actors with ENetRole::ROLE_SimulatedProxy.]`
- `bool bFocalParticleInPhysicsReplicationLOD [Register this actor's Autonomous Proxy as a focal point / focal particle in Physics Replication LOD.]`
- `bool bOverrideSimProxyRepMode [Override properties]`


**方法**:

- `FNetworkPhysicsSettings& opAssign(FNetworkPhysicsSettings Other)`

---

