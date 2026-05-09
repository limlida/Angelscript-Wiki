### FMovementModifierBase


Movement Modifier: Used to apply changes that indirectly influence the movement simulation,
without proposing or executing any movement, but still in sync with the sim.
Example usages: changing groups of settings, movement mode re-mappings, etc.

Note: Currently mover expects to only have one type of modifier active at a time.
             This can be fixed by extending the Matches function to check more than just type,
             but make sure anything used to compare is synced through the NetSerialize function.

**属性**:

- `float32 DurationMs [This modifier will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`


**方法**:

- `FMovementModifierBase& opAssign(FMovementModifierBase Other)`

---

