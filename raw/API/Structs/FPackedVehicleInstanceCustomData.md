### FPackedVehicleInstanceCustomData


FVehicleInstanceCustomData packed into a single 32 bit float to be passed as ISMC PerInstanceCustomData
which is currently limited to a single float for Nanite ISMCs. We also pass this to PrimitiveComponent's via
UPrimitiveComponent::SetCustomPrimitiveDataFloat

@see FVehicleInstanceCustomData

**属性**:

- `float32 PackedParam1 [Bit packed param with RandomFraction packed into the least significant
bits
e.g: [ 0000000000000000 | VisualizationFlags (not used) | RandomFraction ]]`


**方法**:

- `FPackedVehicleInstanceCustomData& opAssign(FPackedVehicleInstanceCustomData Other)`

---

