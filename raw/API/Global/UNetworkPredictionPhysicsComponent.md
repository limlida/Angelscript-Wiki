### UNetworkPredictionPhysicsComponent


UNetworkPredictionPhysicsComponent

This is a component that will register a FGenericPhysicsModelDef and bind to the first UPrimitiveComponent found in the parent actor.
That is - there is NO backing NetworkPrediction simulation/gameplay code. This will always be SimulatedProxy and does not support any
of the AP<-->Server communication that UNetworkPredictionComponent.

To fully emphasize: this is for STAND ALONE physics objects that want to use NP's fixed tick services.
It is NOT for "any NP object that uses physics". A vehicle that can be controlled by a client needs to use (or model after) UNetworkPredictionComponent.

Even then, it is just sort of an example. An extra component may not be the best way to use this. It may make more sense to just
put the important bits on your actor class and set the exact UpdatedPrimitive you want (really PhysicsActorHandle is all that matters!)
---

