### UNetworkPredictionComponent


UNetworkPredictionComponent
This is the base component for running a TNetworkedSimulationModel through an actor component. This contains the boiler plate hooks into getting the system
initialized and plugged into the UE replication system.

This is an abstract component and cannot function on its own. It must be subclassed and InitializeNetworkPredictionProxy must be implemented.
Ticking and RPC sending will be handled automatically.

Its also worth pointing out that nothing about being a UActorComponent is essential here. All that this component does could be done within an AActor itself.
An actor component makes sense for flexible/reusable code provided by the plugin. But there is nothing stopping you from copying this directly into an actor if you had reason to.
---

