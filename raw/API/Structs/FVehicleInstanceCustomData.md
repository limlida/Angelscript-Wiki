### FVehicleInstanceCustomData


* Vehicle visualization parameters to be passed to vehicle ISMCs as PerInstanceCustomData and PrimitiveComponent's
* via UPrimitiveComponent::SetCustomPrimitiveDataFloat. Note, these raw values aren't passed directly - they're passed
* as packed data via FMassPackedVehicleInstanceCustomData
*
* @see FMassPackedVehicleInstanceCustomData

**属性**:

- `float32 RandomFraction`
- `bool bAccessoryLights [PackedParam1[16 + 10]]`
- `bool bFrontLeftRunningLights [Packed as FFloat16 into PackedParam1[0 : 15]]`
- `bool bFrontRightRunningLights [PackedParam1[16 + 0]]`
- `bool bLeftBrakeLights [PackedParam1[16 + 3]]`
- `bool bLeftHeadlight [PackedParam1[16 + 7]]`
- `bool bLeftTurnSignalLights [PackedParam1[16 + 5]]`
- `bool bRearLeftRunningLights [PackedParam1[16 + 1]]`
- `bool bRearRightRunningLights [PackedParam1[16 + 2]]`
- `bool bReversingLights [PackedParam1[16 + 9]]`
- `bool bRightBrakeLights [PackedParam1[16 + 4]]`
- `bool bRightHeadlight [PackedParam1[16 + 8]]`
- `bool bRightTurnSignalLights [PackedParam1[16 + 6]]`


**方法**:

- `FVehicleInstanceCustomData& opAssign(FVehicleInstanceCustomData Other)`

---

