### UAsyncFlyingMode


AsyncFlyingMode: a default movement mode for moving through the air freely, but still interacting with blocking geometry. The
moving actor will remain upright vs the movement plane.
This mode is threadsafe, and simulates movement without actually modifying any scene component(s).

**属性**:

- `bool bRespectDistanceOverWalkableSurfaces [If true, the actor will 'float' above any walkable surfaces to maintain the same height as ground-based modes.
This can prevent pops when transitioning to ground-based movement, at the cost of performing floor checks while flying.]`

---

