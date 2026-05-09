### FContextualAnimWarpPointDefinition


Contain the params necessary to calculate a warp point for the scene.
A warp point is a transform in the scene that can be used as reference to calculate alignment between actors

**属性**:

- `EContextualAnimWarpPointDefinitionMode Mode [Method used to calculate this warp point]`
- `FContextualAnimWarpPointCustomParams Params [Set of rules used to calculate the warp point. Only relevant when Mode is Custom]`
- `FName SocketName [Name of the socket in the primary actor acting as warping point. Only relevant when Mode is Socket]`
- `FName WarpTargetName [Name of the warp target in the warping window this warp point is for]`


**方法**:

- `FContextualAnimWarpPointDefinition& opAssign(FContextualAnimWarpPointDefinition Other)`

---

