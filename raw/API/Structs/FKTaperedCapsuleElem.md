### FKTaperedCapsuleElem


Capsule shape used for collision. Z axis is capsule axis. Has a start and end radius that can differ.

**属性**:

- `FVector Center [Position of the capsule's origin]`
- `ECollisionEnabled CollisionEnabled [Course per-primitive collision filtering. This allows for individual primitives to
              be toggled in and out of sim and query collision without changing filtering details.]`
- `float32 Length [Length of line-segment. Add Radius0 and Radius 1 to find total length.]`
- `FName Name [User-defined name for this shape]`
- `float32 Radius0 [Radius of the capsule start point]`
- `float32 Radius1 [Radius of the capsule end point]`
- `float32 RestOffset [Offset used when generating contact points. This allows you to smooth out
              the Minkowski sum by radius R. Useful for making objects slide smoothly
              on top of irregularities]`
- `FRotator Rotation [Rotation of the capsule]`
- `bool bContributeToMass [True if this shape should contribute to the overall mass of the body it
              belongs to. This lets you create extra collision volumes which do not affect
              the mass properties of an object.]`
- `bool bIsGenerated [True when the shape was created by the engine and was not imported.]`
- `bool bOneSidedCollision [(Cloth-only) Treat as one-sided collider, where all collisions are pushed to the +x side.]`


**方法**:

- `FKTaperedCapsuleElem& opAssign(FKTaperedCapsuleElem Other)`

---

