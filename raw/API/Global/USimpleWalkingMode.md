### USimpleWalkingMode


Basic walking mode that implements the ground based walking

**属性**:

- `float32 MaxSpeedOverride [If this value is greater or equal to 0, this will override the max speed read from the common legacy shared walk settings]`


**方法**:

- `GenerateWalkMove(FMoverTickStartData& StartState, float DeltaSeconds, FVector DesiredVelocity, FQuat DesiredFacing, FQuat CurrentFacing, FVector& InOutAngularVelocityDegrees, FVector& InOutVelocity)`  
  Override this to make a simple walking mode

---

