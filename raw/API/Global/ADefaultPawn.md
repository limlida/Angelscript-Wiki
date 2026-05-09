### ADefaultPawn


DefaultPawn implements a simple Pawn with spherical collision and built-in flying movement.
@see UFloatingPawnMovement

**属性**:

- `float32 BaseLookUpRate [Base lookup rate, in deg/sec. Other scaling may affect final lookup rate.]`
- `float32 BaseTurnRate [Base turn rate, in deg/sec. Other scaling may affect final turn rate.]`
- `USphereComponent CollisionComponent [DefaultPawn collision component]`
- `UStaticMeshComponent MeshComponent [The mesh associated with this Pawn.]`
- `UPawnMovementComponent MovementComponent [DefaultPawn movement component]`
- `bool bAddDefaultMovementBindings [If true, adds default input bindings for movement and camera look.]`


**方法**:

- `LookUpAtRate(float32 Rate)`  
  Called via input to look up at a given rate (or down if Rate is negative).
@param Rate   This is a normalized rate, i.e. 1.0 means 100% of desired turn rate
- `MoveForward(float32 Val)`  
  Input callback to move forward in local space (or backward if Val is negative).
@param Val Amount of movement in the forward direction (or backward if negative).
@see APawn::AddMovementInput()
- `MoveRight(float32 Val)`  
  Input callback to strafe right in local space (or left if Val is negative).
@param Val Amount of movement in the right direction (or left if negative).
@see APawn::AddMovementInput()
- `MoveUp_World(float32 Val)`  
  Input callback to move up in world space (or down if Val is negative).
@param Val Amount of movement in the world up direction (or down if negative).
@see APawn::AddMovementInput()
- `TurnAtRate(float32 Rate)`  
  Called via input to turn at a given rate.
@param Rate  This is a normalized rate, i.e. 1.0 means 100% of desired turn rate

---

