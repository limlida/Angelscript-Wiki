### FMovingComponentSet


Encapsulates components involved in movement. Used by many library functions.
Only a scene component is required for movement, but this is typically a primitive
component so we provide a pre-cast ptr for convenience.

**属性**:

- `TWeakObjectPtr<UMoverComponent> MoverComponent`
- `TWeakObjectPtr<USceneComponent> UpdatedComponent`
- `TWeakObjectPtr<UPrimitiveComponent> UpdatedPrimitive`


**方法**:

- `FMovingComponentSet& opAssign(FMovingComponentSet Other)`

---

