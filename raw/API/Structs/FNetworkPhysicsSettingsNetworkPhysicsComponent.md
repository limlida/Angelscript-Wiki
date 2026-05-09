### FNetworkPhysicsSettingsNetworkPhysicsComponent


**属性**:

- `FRuntimeFloatCurve InputDecayCurve [Curve for input decay during resimulation if input is being reused.
      * XAxis = Alpha value from 0.0 to 1.0 where 0 is the start of reusing input and 1 is the last time we will reuse the input this resimulation.
      * YAxis = The Input Decay value from 0.0 to 1.0 (as a percentage where 1.0 = 100% decay) for the given Alpha.]`
- `float32 InputDecaySetTime [Overrides CVar: np2.Resim.InputDecaySetTime -- Applied when np2.Resim.ApplyInputDecayOverSetTime is true, read there for more info. Set time to apply Input Decay Curve over while predicting inputs during resimulation]`
- `uint16 RedundantInputs [Overrides CVar : np2.Resim.RedundantInputs -- How many extra inputs to send with each unreliable network message, to account for packetloss.From owning client to server and server to owning client.
       * NOTE: This is disabled while np2.Resim.DynamicInputScaling.Enabled is enabled.]`
- `uint16 RedundantRemoteInputs [Overrides CVar: np2.Resim.RedundantRemoteInputs -- How many extra inputs to send with each unreliable network message, to account for packetloss. From Server to remote clients.]`
- `uint16 RedundantStates [Overrides CVar: np2.Resim.RedundantStates -- How many extra states to send with each unreliable network message, to account for packetloss. From Server to remote clients.]`
- `bool bAllowInputExtrapolation [Overrides CVar: np2.Resim.AllowInputExtrapolation -- When true and not locally controlled, allow inputs to be extrapolated from last known and if there is a gap allow interpolation between two known inputs.]`
- `bool bApplyDataInsteadOfMergeData [Overrides CVar: np2.Resim.ApplyDataInsteadOfMergeData -- When true, call ApplyData for each data instead of MergeData when having to use multiple data entries in one frame.]`
- `bool bApplyInputDecayOverSetTime [Overrides CVar: np2.Resim.ApplyInputDecayOverSetTime -- When true, apply the Input Decay Curve over a set amount of time instead of over the start of input prediction and end of resim which is variable each resimulation]`
- `bool bApplySimProxyInputAtRuntime [Overrides CVar: np2.Resim.ApplySimProxyInputAtRuntime -- When true, call ApplyData on received inputs for simulated proxies at runtime.]`
- `bool bApplySimProxyStateAtRuntime [Overrides CVar: np2.Resim.ApplySimProxyStateAtRuntime -- When true, call ApplyData on received states for simulated proxies at runtime.]`
- `bool bCompareInputToTriggerRewind [Overrides CVar: np2.Resim.CompareInputToTriggerRewind -- When true, compare local predicted FNetworkPhysicsData input with incoming server input to trigger resimulations if they differ, comparison done through FNetworkPhysicsData::CompareData.]`
- `bool bCompareStateToTriggerRewind [Overrides CVar: np2.Resim.CompareStateToTriggerRewind -- When true, cache local FNetworkPhysicsData state in rewind history and compare the predicted state with incoming server state to trigger resimulations if they differ, comparison done through FNetworkPhysicsData::CompareData.]`
- `bool bCompareStateToTriggerRewindIncludeSimProxies [Overrides CVar: np2.Resim.CompareStateToTriggerRewind.IncludeSimProxies -- When true, include simulated proxies when np2.Resim.CompareStateToTriggerRewind is enabled.]`
- `bool bEnableReliableFlow [Overrides CVar: np2.Resim.EnableReliableFlow -- EXPERIMENTAL -- When true, allow data to be sent reliably. Also send FNetworkPhysicsData marked with FNetworkPhysicsData::bimportant reliably over the network.]`
- `bool bEnableUnreliableFlow [Overrides CVar: np2.Resim.EnableUnreliableFlow -- When true, allow data to be sent unreliably. Also sends FNetworkPhysicsData not marked with FNetworkPhysicsData::bimportant unreliably over the network.]`
- `bool bOverrideAllowInputExtrapolation`
- `bool bOverrideApplyDataInsteadOfMergeData`
- `bool bOverrideApplyInputDecayOverSetTime`
- `bool bOverrideApplySimProxyInputAtRuntime`
- `bool bOverrideApplySimProxyStateAtRuntime`
- `bool bOverrideCompareInputToTriggerRewind`
- `bool bOverrideCompareStateToTriggerRewind`
- `bool bOverrideEnableReliableFlow`
- `bool bOverrideEnableUnreliableFlow`
- `bool bOverrideInputDecaySetTime`
- `bool bOverrideRedundantInputs [Override properties]`
- `bool bOverrideRedundantRemoteInputs`
- `bool bOverrideRedundantStates`
- `bool bOverrideTriggerResimOnInputReceive`
- `bool bOverrideValidateDataOnGameThread`
- `bool bOverridebCompareStateToTriggerRewindIncludeSimProxies`
- `bool bTriggerResimOnInputReceive [Overrides CVar: np2.Resim.TriggerResimOnInputReceive -- When true, a resimulation will be requested to the frame of the latest frame of received inputs this frame]`
- `bool bValidateDataOnGameThread [Overrides CVar: np2.Resim.ValidateDataOnGameThread -- When true, perform server-side input validation through FNetworkPhysicsData::ValidateData on the Game Thread. If false, perform the call on the Physics Thread.]`


**方法**:

- `FNetworkPhysicsSettingsNetworkPhysicsComponent& opAssign(FNetworkPhysicsSettingsNetworkPhysicsComponent Other)`

---

