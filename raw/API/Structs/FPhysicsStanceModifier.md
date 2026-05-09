### FPhysicsStanceModifier


Physics specialized version of FStanceModifier

**属性**:

- `float32 DurationMs [This modifier will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`


**方法**:

- `FPhysicsStanceModifier& opAssign(FPhysicsStanceModifier Other)`

---

