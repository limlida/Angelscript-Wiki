### FProposedMove


Encapsulates info about an intended move that hasn't happened yet

**属性**:

- `FVector AngularVelocityDegrees [Angular velocity in degrees per second. Direction points along rotation axis.]`
- `FVector DirectionIntent [Directional, per-axis magnitude [-1, 1] in world space (length of 1 indicates max speed intent). Only valid if bHasDirIntent is set.]`
- `FVector LinearVelocity [Units per second, world space, possibly mapped onto walking surface]`
- `EMoveMixMode MixMode [Determines how this move should resolve with other moves]`
- `FName PreferredMode [Indicates that we should switch to a particular movement mode before the next simulation step is performed.
Note: If this is set from a layered move the preferred mode will only be set at the beginning of the layered move, not continuously.]`
- `bool bHasDirIntent [Signals whether there was any directional intent specified]`


**方法**:

- `FProposedMove& opAssign(FProposedMove Other)`

---

