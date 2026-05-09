### FRetargetPoleVectorSettings


**属性**:

- `float AlignAlpha [Range 0 to 1. Default 1. Matches the twist angle of this chain (along the Pole direction) to the source chain.
At 0, the chain's pole vector direction will be left alone
At 1, the root bone of the chain will be twist-rotated in the pole direction to match the orientation of the source chain.]`
- `bool MaintainOffset [Default is False. When true, the original angular offset between the source/target pole vectors will be maintained when aligning pole vectors.]`
- `float StaticAngularOffset [Range +/- 180. Default 0. An angular offset, in degrees, for the pole direction of the chain.]`
- `FName TargetChainName [The name of the target chain to align pole vectors on.]`
- `bool bEnabled [Enable pole vector alignment on this chain.]`


**方法**:

- `FRetargetPoleVectorSettings& opAssign(FRetargetPoleVectorSettings Other)`

---

