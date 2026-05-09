### FLayeredMove_RadialImpulse


RadialImpulse applies a velocity pulling or pushing away from a given world location to the target actor

**属性**:

- `UCurveFloat DistanceFalloff [Optional Curvefloat to dictate falloff of velocity as you get further from the velocity location]`
- `float32 DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after a layered move has finished]`
- `FRotator FixedWorldDirection [Direction to apply velocity from the radial impulse in. This is only taken into account if UseFixedWorldDirection is true.]`
- `FVector Location [Location to pull or push actor from]`
- `AActor LocationActor [Optional Actor to pull or push this actor from. Note: this overrides the Location Property]`
- `float32 Magnitude [Magnitude of velocity applied to actors in range]`
- `UCurveFloat MagnitudeOverTime [Optional Curvefloat to dictate magnitude of velocity applied over time]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`
- `float32 Radius [Radius from the location to apply radial velocity]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`
- `bool bIsPush [If true the velocity applied will push actor away from location, otherwise this layered move wil pull the actor towards it]`
- `bool bNoVerticalVelocity [Whether to apply vertical velocity (based off mover components up direction) to the actor affected by this layered move]`
- `bool bUseFixedWorldDirection [If true velocity added to the actor will be in the direction of FixedWorldDirection, otherwise it will be calculated from the position of the actor and velocity location.]`


**方法**:

- `FLayeredMove_RadialImpulse& opAssign(FLayeredMove_RadialImpulse Other)`

---

