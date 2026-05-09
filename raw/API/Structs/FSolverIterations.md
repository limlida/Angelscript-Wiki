### FSolverIterations


Solver settings for use by the Legacy RigidBody AnimNode (RBAN) solver.
These settings are no longer used by default and will eventually be deprecated and then removed.

@note These settings have no effect when the Physics Asset is used in a world simulation (ragdoll).

**属性**:

- `int CollisionIterations [The recommended number of collision sub-iterations. Increasing this can help with collision jitter.]`
- `int CollisionPushOutIterations [The recommended number of joint sub-push-out iterations. Increasing this can help with collision penetration problems.]`
- `int JointIterations [The recommended number of joint sub-iterations. Increasing this can help with chains of long-thin bodies.]`
- `int JointPushOutIterations [The recommended number of joint sub-push-out iterations.]`
- `int SolverIterations [The recommended number of solver iterations. Increase this if collision and joints are fighting, or joint chains are stretching.]`
- `int SolverPushOutIterations [Increase this if bodies remain penetrating]`


**方法**:

- `FSolverIterations& opAssign(FSolverIterations Other)`

---

