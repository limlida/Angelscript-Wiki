### FNetworkPredictionSettings


**属性**:

- `int FixedTickFrameRate [Frame rate to use when running Fixed Tick simulations. Note: Engine::FixedFrameRate will take precedence if Engine::bUseFixedFrameRate is enabled.]`
- `int FixedTickInputSendCount [Clients should send this number of most recent input commands together per update, for a Fixed Tick simulation]`
- `int FixedTickInterpolationBufferedMS [How much buffered time to keep for fixed ticking interpolated sims (client only).]`
- `int IndependentTickInputSendCount [Clients should send this number of most recent input commands together per update, for an Independent Tick simulation]`
- `int IndependentTickInterpolationBufferedMS [How much buffered time to keep for fixed independent interpolated sims (client only).]`
- `int IndependentTickInterpolationMaxBufferedMS [Max buffered time to keep for fixed independent interpolated sims (client only).]`
- `int MaximumRemoteInputFaultLimit [Cap the number of remote input commands required to be buffered before resuming input consumption after a fault]`
- `ENetworkPredictionTickingPolicy PreferredTickingPolicy [Which ticking policy to use in cases where both are supported by the underlying simulation.
Leave this on Fixed if you intend to use physics based simulations.]`
- `TSubclassOf<ANetworkPredictionReplicatedManager> ReplicatedManagerClassOverride [Replicated Manager class]`
- `ENetworkLOD SimulatedProxyNetworkLOD [Default NetworkLOD for simulated proxy simulations.]`
- `bool bEnableFixedTickSmoothing [If enabled, the fixed tick smoothing service will be active, allowing drivers to receive smoothly interpolated updates for any locally-simulated objects (including forward-predicted sim proxies).]`
- `bool bForceEngineFixTickForcePhysics [Forces the engine to run in fixed tick mode when a NP physics simulation is running.
This is the same as settings UEngine::bUseFixedFrameRate / FixedFrameRate manually.]`


**方法**:

- `FNetworkPredictionSettings& opAssign(FNetworkPredictionSettings Other)`

---

