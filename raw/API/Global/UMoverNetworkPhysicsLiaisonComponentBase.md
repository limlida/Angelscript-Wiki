### UMoverNetworkPhysicsLiaisonComponentBase


WARNING - This class will be removed. Please use UChaosMoverBackend instead

Base class for liaison components to act as a middleman between an actor's Mover component and the Chaos physics network prediction system to move
the Mover's updated component on the physics thread (PT).

This is accomplished by registering a FPhysicsMoverManagerAsyncCallback and exposing the game thread (GT) and PT methods for the TSimCallback to
virtual methods on this liaison.
---

