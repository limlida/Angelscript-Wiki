### FStableActor


Special type that can be used like any old actor reference, but persists through play sessions as it references the actor via its stable GUID.
Only works with actors that implement IStableActor and return a GUID via IStableActor.GetGUID()

**属性**:

- `FGuid StableActorGUID`


**方法**:

- `FStableActor& opAssign(FStableActor Other)`

---

