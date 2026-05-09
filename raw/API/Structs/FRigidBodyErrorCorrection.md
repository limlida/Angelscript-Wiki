### FRigidBodyErrorCorrection


Rigid body error correction data

**属性**:

- `float32 AngleLerp [How much to directly lerp to the correct angle.]`
- `float32 AngularVelocityCoefficient [This is the angular analog to LinearVelocityCoefficient.]`
- `float32 ErrorAccumulationDistanceSq [If the body has moved less than the square root of
              this amount towards a resolved state in the previous
              frame, then error may accumulate towards a hard snap.]`
- `float32 ErrorAccumulationSeconds [Number of seconds to remain in a heuristically
              unresolveable state before hard snapping.]`
- `float32 ErrorAccumulationSimilarity [If the previous error projected onto the current error
              is greater than this value (indicating "similarity"
              between states), then error may accumulate towards a
              hard snap.]`
- `float32 ErrorPerAngularDifference [Error per degree]`
- `float32 ErrorPerLinearDifference [Error per centimeter]`
- `float32 LinearVelocityCoefficient [This is the coefficient `k` in the differential equation:
              dx/dt = k ( x_target(t) - x(t) ), which is used to update
              the velocity in a replication step.]`
- `float32 MaxLinearHardSnapDistance []`
- `float32 MaxRestoredStateError [Maximum allowable error for a state to be considered "resolved"]`
- `float32 PingExtrapolation [Value between 0 and 1 which indicates how much velocity
              and ping based correction to use]`
- `float32 PingLimit [For the purpose of extrapolation, ping will be clamped to this value]`
- `float32 PositionLerp [How much to directly lerp to the correct position. Generally
              this should be very low, if not zero. A higher value will
              increase precision along with jerkiness.]`


**方法**:

- `FRigidBodyErrorCorrection& opAssign(FRigidBodyErrorCorrection Other)`

---

