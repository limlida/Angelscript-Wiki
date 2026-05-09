### FGeometryCollectionCollisionTypeData


**属性**:

- `float32 CollisionMarginFraction [A collision margin is a fraction of size used by some boxes and convex shapes to improve collision detection results.
The core geometry of shapes that support a margin are reduced in size by the margin, and the margin
is added back on during collision detection. The net result is a shape of the same size but with rounded corners.]`
- `float32 CollisionObjectReductionPercentage [*  Uniform scale on the collision body. (def: 0)]`
- `FGeometryCollectionCollisionParticleData CollisionParticles [*  Collision Particle data for surface samples during Particle-LevelSet collisions.]`
- `ECollisionTypeEnum CollisionType [*  CollisionType defines how to initialize the rigid collision structures.]`
- `EImplicitTypeEnum ImplicitType [*  CollisionType defines how to initialize the rigid collision structures.]`
- `FGeometryCollectionLevelSetData LevelSet [*  LevelSet Resolution data for rasterization.]`


**方法**:

- `FGeometryCollectionCollisionTypeData& opAssign(FGeometryCollectionCollisionTypeData Other)`

---

