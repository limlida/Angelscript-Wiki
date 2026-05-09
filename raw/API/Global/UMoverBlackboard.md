### UMoverBlackboard


MoverBlackboard: this is a simple generic map that can store any type, used as a way for decoupled systems to
store calculations or transient state data that isn't necessary to reconstitute the movement simulation.
It has support for invalidation, which could occur, for example, when a rollback is triggered.
Values submitted are copy-in, copy-out.
Unlike a traditional blackboard pattern, there is no support for subscribing to changes.
TODO: expand invalidation rules attached to BBObjs, for instance if we wanted some to invalidate upon rollback. Some might expire over time or after a number of simulation frames. Or an item could be tagged with a predicted sim frame #, and become cleared once that frame is finalized/confirmed.
---

