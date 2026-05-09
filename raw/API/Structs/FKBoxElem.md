### FKBoxElem


Box shape used for collision

**属性**:

- `FVector Center [Position of the box's origin]`
- `ECollisionEnabled CollisionEnabled [Course per-primitive collision filtering. This allows for individual primitives to
              be toggled in and out of sim and query collision without changing filtering details.]`
- `FName Name [User-defined name for this shape]`
- `float32 RestOffset [Offset used when generating contact points. This allows you to smooth out
              the Minkowski sum by radius R. Useful for making objects slide smoothly
              on top of irregularities]`
- `FRotator Rotation [Rotation of the box]`
- `float32 X [Extent of the box along the x-axis]`
- `float32 Y [Extent of the box along the y-axis]`
- `float32 Z [Extent of the box along the z-axis]`
- `bool bContributeToMass [True if this shape should contribute to the overall mass of the body it
              belongs to. This lets you create extra collision volumes which do not affect
              the mass properties of an object.]`
- `bool bIsGenerated [True when the shape was created by the engine and was not imported.]`


**方法**:

- `FKBoxElem& opAssign(FKBoxElem Other)`

---

