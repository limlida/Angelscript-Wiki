### AWheeledVehiclePawn


ChaosWheeledVehicle is the base wheeled vehicle pawn actor.
By default it uses UChaosWheeledVehicleMovementComponent for its simulation, but this can be overridden by inheriting from the class and modifying its constructor like so:
Super(ObjectInitializer.SetDefaultSubobjectClass<UMyMovement>(VehicleComponentName))
Where UMyMovement is the new movement type that inherits from UChaosVehicleMovementComponent

**属性**:

- `USkeletalMeshComponent Mesh [The main skeletal mesh associated with this Vehicle]`
- `UChaosVehicleMovementComponent VehicleMovementComponent [vehicle simulation component]`

---

