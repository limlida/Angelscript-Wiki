### FStanceModifier


Stances: Applies settings to the actor to make them go into different stances like crouch or prone(not implemented), affects actor maxacceleration and capsule height
Note: This modifier currently uses the CDO of the actor to reset values to "standing" values.
             This modifier also assumes the actor is using a capsule as it's updated component for now

**属性**:

- `float32 DurationMs [This modifier will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`


**方法**:

- `FStanceModifier& opAssign(FStanceModifier Other)`

---

